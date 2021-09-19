package main

import (
	"crypto/sha256"
	"encoding/hex"
	"flag"
	"io"
	"io/ioutil"
	"log"
	"net/http"
	"os"

	"github.com/bazelbuild/buildtools/build"
)

func convert(e build.Expr) []build.Expr {
	return []build.Expr{e}
}

func updateWorkspaceRule(url_val string, prefix_val string, rule *build.Rule) {
	url := &build.StringExpr{Value: url_val}

	rule.SetAttr("urls", &build.ListExpr{List: convert(url)})
	h := sha256.New()
	http.Get(url_val)

	resp, err := http.Get(url_val)
	if err != nil {
		log.Fatal(err)
	}
	defer resp.Body.Close()
	_, err = io.Copy(h, resp.Body)
	if err != nil {
		log.Fatal(err)
	}
	h.Sum(nil)
	rule.SetAttr("sha256", &build.StringExpr{Value: hex.EncodeToString(h.Sum(nil))})

	if prefix_val != "" {
		rule.SetAttr("strip_prefix", &build.StringExpr{Value: prefix_val})
	}
}

func main() {
	var rule string
	var url_value string
	var workspace string
	var prefix string

	flag.StringVar(&rule, "rule", "", "Name of the rule to update")
	flag.StringVar(&url_value, "url", "", "Url to be replaced")
	flag.StringVar(&workspace, "workspace", "", "WORKSPACE to be updated")
	flag.StringVar(&prefix, "prefix", "", "Strip prefix to be replaced")
	flag.Parse()

	workspacefile, err := os.Open(workspace)
	if err != nil {
		log.Fatal(err)
	}
	wscontent, err := ioutil.ReadAll(workspacefile)
	if err != nil {
		log.Fatal(err)
	}
	workspacefile.Close()

	f, err := build.Parse("WORKSPACE", wscontent)
	if err != nil {
		log.Fatal(err)
	}

	for _, r := range f.Rules("") {
		if r.Name() == rule {
			updateWorkspaceRule(url_value, prefix, r)
		}
	}

	err = ioutil.WriteFile(workspace, []byte(build.Format(f)), 0644)
	if err != nil {
		log.Fatal(err)
	}
	return
}
