#/bin/sh

## write a rule rewirting config to a rules.yaml files
## args :
##   $1 : name of the conf
##   $2 : name of the rule to be updated
##   $3 : url to be updated
##   $4 : strip_prefix to be updated
write_rule() {
cat << EOF >> rules.yaml
$1:
  name: $2
  url: $3
  prefix: $4
EOF
}

## write a dictionary rewirting config to a versions.yaml files
## args :
##   $1 : name of the conf
##   $2 : name of the constant to be updated
##   $3 : value to be updated
##   $4 : key of the value to be updated
write_version() {
cat << EOF >> versions.yaml
$1:
  name: $2
  value: $3
  key: $4
EOF
}