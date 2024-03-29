load("@rules_foreign_cc//foreign_cc:defs.bzl", "configure_make")
load("@bazel_tools//tools/build_defs/pkg:pkg.bzl", "pkg_tar")

filegroup(
    name = "all",
    srcs = glob(["**"]),
)

filegroup(
    name = "jemalloc_files",
    srcs = glob(["deps/jemalloc/**"]),
)

cc_library(
    name = "hiredis",
    srcs = ["deps/hiredis/" + filename for filename in [
        "alloc.c",
        "alloc.h",
        "async.c",
        "async.h",
        "async_private.h",
        "dict.c",
        "dict.h",
        "fmacros.h",
        "hiredis.c",
        "hiredis.h",
        "net.c",
        "net.h",
        "read.c",
        "read.h",
        "sds.c",
        "sds.h",
        "sdsalloc.h",
        "sockcompat.c",
        "sockcompat.h",
        "win32.h",
    ]],
    textual_hdrs = ["deps/hiredis/dict.c"],
    copts = [
        "-std=c99",
        "-pedantic",
        "-Wall",
        "-W",
        "-Wstrict-prototypes",
        "-Wwrite-strings",
        "-Wno-missing-field-initializers",
        "-O3",
        "-DHIREDIS_TEST_SSL",
        "-fPIC",
    ],
    # alwayslink = True,
    # linkstatic = True,
)

cc_library(
    name = "hiredis_ssl",
    srcs = ["deps/hiredis/" + filename for filename in [
        "ssl.c",
        "hiredis.h",
        "read.h",
        "sds.h",
        "alloc.h",
        "async.h",
        "win32.h",
        "async_private.h",
        "hiredis_ssl.h",
    ]],
    copts = [
        "-std=c99",
        "-pedantic",
        "-Wall",
        "-W",
        "-Wstrict-prototypes",
        "-Wwrite-strings",
        "-Wno-missing-field-initializers",
        "-O3",
        "-DHIREDIS_TEST_SSL",
        "-fPIC",
    ],
    deps = select({
        "@yad//platforms:focal": [ "@openssl1//:openssl", ],
        "@yad//platforms:jammy": [ "@openssl3//:openssl", ],
    }),
)

cc_library(
    name = "linenoise",
    srcs = ["deps/linenoise/" + filename for filename in [
        "linenoise.c",
        "linenoise.h",
    ]],
    copts = [
        "-Wall",
        "-Os",
        "-fPIC",
    ],
    # alwayslink = True,
    # linkstatic = True,
)

cc_library(
    name = "lua",
    srcs = ["deps/lua/src/" + filename for filename in [
        "fpconv.c",
        "fpconv.h",
        "lapi.c",
        "lapi.h",
        "lauxlib.c",
        "lauxlib.h",
        "lbaselib.c",
        "lcode.c",
        "lcode.h",
        "ldblib.c",
        "ldebug.c",
        "ldebug.h",
        "ldo.c",
        "ldo.h",
        "ldump.c",
        "lfunc.c",
        "lfunc.h",
        "lgc.c",
        "lgc.h",
        "linit.c",
        "liolib.c",
        "llex.c",
        "llex.h",
        "llimits.h",
        "lmathlib.c",
        "lmem.c",
        "lmem.h",
        "loadlib.c",
        "lobject.c",
        "lobject.h",
        "lopcodes.c",
        "lopcodes.h",
        "loslib.c",
        "lparser.c",
        "lparser.h",
        "lstate.c",
        "lstate.h",
        "lstring.c",
        "lstring.h",
        "lstrlib.c",
        "ltable.c",
        "ltable.h",
        "ltablib.c",
        "ltm.c",
        "ltm.h",
        "lua.h",
        "luaconf.h",
        "lualib.h",
        "lua_bit.c",
        "lua_cjson.c",
        "lua_cmsgpack.c",
        "lua_struct.c",
        "lundump.c",
        "lundump.h",
        "lvm.c",
        "lvm.h",
        "lzio.c",
        "lzio.h",
        "print.c",
        "strbuf.c",
        "strbuf.h",
    ]] + ["src/solarisfixes.h"],
    copts = [
        "-O2",
        "-Wall",
        "-DLUA_ANSI",
        "-DENABLE_CJSON_GLOBAL",
        "-DREDIS_STATIC=",
        "-DLUA_USE_MKSTEMP",
        "-fPIC",
    ],
    # alwayslink = True,
    # linkstatic = True,
)

cc_library(
    name = "hdr_histogram",
    srcs = ["deps/hdr_histogram/" + filename for filename in [
        "hdr_histogram.c",
        "hdr_histogram.h",
        "hdr_atomic.h",
        "hdr_tests.h",
        "hdr_redis_malloc.h",
    ]],
    copts = [
        "-Wall",
        "-Os",
        "-fPIC",
        "-DHDR_MALLOC_INCLUDE=\\\"hdr_redis_malloc.h\\\"",
    ],
    # alwayslink = True,
    # linkstatic = True,
)

configure_make(
    name = "libjemalloc",
    configure_options = select({
        "@yad//platforms:aarch64_cpu": [
            "--host=x86_64-linux-gnu",
            "--build=aarch64-linux-gnu",
            "--with-lg-page=16",
            "--with-lg-hugepage=21",
            "--with-version=5.1.0-0-g0",
            "--with-lg-quantum=3",
            "--with-jemalloc-prefix=je_",
        ],
        "@yad//platforms:k8_cpu": [
            "--host=x86_64-linux-gnu",
            "--build=x86_64-linux-gnu",
            "--with-lg-page=12",
            "--with-lg-hugepage=21",
            "--with-version=5.1.0-0-g0",
            "--with-lg-quantum=3",
            "--with-jemalloc-prefix=je_",
        ],
    }),
    env = {
        "CFLAGS" : "-std=gnu99 -O3 -fPIC"
    },
    lib_source = ":jemalloc_files",
    targets = [
        "lib/libjemalloc.a",
        "install_lib",
        "install_include",
    ],
    out_static_libs = [
        "libjemalloc_pic.a",
    ]
)

# https://docs.bazel.build/versions/master/be/c-cpp.html#cc_library
cc_library(
    name = "jemalloc",
    deps = [":libjemalloc"],
)

sh_binary(
    name = "mkreleasehdr",
    srcs = ["src/mkreleasehdr.sh"],
)

genrule(
    name = "mk_release_hdrs",
    outs = ["release.h"],
    cmd = """$(location mkreleasehdr); mv release.h $@""",
    tools = [":mkreleasehdr"],
)

COPTS = [
    "-std=gnu99",
    "-pedantic",
    "-Wall",
    "-W",
    "-Wno-missing-field-initializers",
    "-O2",
    "-DUSE_JEMALLOC",
    "-DUSE_OPENSSL",
    "-DREDIS_STATIC=",
    "-fPIC",
]

cc_library(
    name = "redis-cli_lib",
    srcs = ["src/" + filename for filename in [
        "adlist.c",
        "adlist.h",
        "ae.c",
        "ae.h",
        "anet.c",
        "anet.h",
        "asciilogo.h",
        "atomicvar.h",
        "bio.h",
        "blocked.c",
        "call_reply.h",
        "childinfo.c",
        "cli_common.c",
        "cli_common.h",
        "cluster.h",
        "config.h",
        "connection.h",
        "connhelpers.h",
        "crc16.c",
        "crc16_slottable.h",
        "crc64.c",
        "crc64.h",
        "crcspeed.c",
        "crcspeed.h",
        "debugmacro.h",
        "dict.c",
        "dict.h",
        "endianconv.h",
        "functions.h",
        "fmacros.h",
        "geo.h",
        "geohash.h",
        "geohash_helper.h",
        "help.h",
        "intset.h",
        "latency.h",
        "listpack.h",
        "lolwut.h",
        "lzf.h",
        "lzfP.h",
        "lzf_d.c",
        "monotonic.c",
        "monotonic.h",
        "mt19937-64.c",
        "mt19937-64.h",
        "pqsort.h",
        "quicklist.h",
        "rand.h",
        "rax.h",
        "rdb.h",
        "redis-cli.c",
        "redisassert.c",
        "redisassert.h",
        "redismodule.h",
        "release.c",
        "resp_parser.h",
        "rio.h",
        "script.h",
        "script_lua.h",
        "sds.h",
        "sentinel.c",
        "server.h",
        "setproctitle.c",
        "sha1.h",
        "sha256.h",
        "siphash.c",
        "slowlog.h",
        "solarisfixes.h",
        "sparkline.h",
        "stream.h",
        "util.h", 
        "version.h",
        "ziplist.h",
        "zipmap.h",
        "zmalloc.c",
        "zmalloc.h",
    ]] + ["release.h" ,"deps/hiredis/sdscompat.h", "deps/linenoise/linenoise.h"],
    copts = COPTS,
    includes = [
        "deps/hiredis",
        "deps/linenoise",
        "deps/lua/src",
        "deps/hdr_histogram",
        "src",
    ],
    textual_hdrs = [
        "src/ae_select.c",
        "src/ae_epoll.c",
        "src/ae_kqueue.c",
        "src/ae_evport.c",
    ],
    deps = [
        ":hiredis",
        ":hiredis_ssl",
        ":linenoise",
        ":lua",
        ":libjemalloc",
        ":hdr_histogram",
    ],
)

cc_binary(
    name = "redis-cli",
    deps = [":redis-cli_lib",],
    linkopts = [
        "-ldl",
        "-pthread",
        "-lssl",
        "-lcrypto",
        "-rdynamic",
    ],
)

cc_library(
    name = "redis-server_lib",
    srcs = ["src/" + filename for filename in [
        "acl.c",
        "adlist.c",
        "adlist.h",
        "ae.c",
        "ae.h",
        "anet.c",
        "anet.h",
        "aof.c",
        "asciilogo.h",
        "atomicvar.h",
        "bio.c",
        "bio.h",
        "bitops.c",
        "blocked.c",
        "call_reply.c",
        "call_reply.h",
        "childinfo.c",
        "cli_common.h",
        "cluster.c",
        "cluster.h",
        "commands.c",
        "config.c",
        "config.h",
        "connection.c",
        "connection.h",
        "connhelpers.h",
        "crc16.c",
        "crc16_slottable.h",
        "crc64.c",
        "crc64.h",
        "crcspeed.c",
        "crcspeed.h",
        "db.c",
        "debug.c",
        "debugmacro.h",
        "defrag.c",
        "dict.c",
        "dict.h",
        "endianconv.c",
        "endianconv.h",
        "eval.c",
        "evict.c",
        "expire.c",
        "functions.c",
        "functions.h",
        "function_lua.c",
        "fmacros.h",
        "geo.c",
        "geo.h",
        "geohash.c",
        "geohash.h",
        "geohash_helper.c",
        "geohash_helper.h",
        "hyperloglog.c",
        "intset.c",
        "intset.h",
        "latency.c",
        "lazyfree.c",
        "latency.h",
        "listpack.c",
        "listpack.h",
        "listpack_malloc.h",
        "localtime.c",
        "lolwut.c",
        "lolwut.h",
        "lolwut5.c",
        "lolwut6.c",
        "lzf.h",
        "lzfP.h",
        "lzf_c.c",
        "lzf_d.c",
        "memtest.c",
        "module.c",
        "monotonic.c",
        "monotonic.h",
        "mt19937-64.c",
        "mt19937-64.h",
        "multi.c",
        "networking.c",
        "notify.c",
        "object.c",
        "pqsort.c",
        "pqsort.h",
        "pubsub.c",
        "quicklist.c",
        "quicklist.h",
        "rand.c",
        "rand.h",
        "rax.c",
        "rax.h",
        "rax_malloc.h",
        "rdb.c",
        "rdb.h",
        "redis-check-aof.c",
        "redis-check-rdb.c",
        "redisassert.h",
        "redismodule.h",
        "release.c",
        "replication.c",
        "resp_parser.c",
        "resp_parser.h",
        "rio.c",
        "rio.h",
        "script.c",
        "script.h",
        "script_lua.c",
        "script_lua.h",
        "sds.c",
        "sds.h",
        "sdsalloc.h",
        "sentinel.c",
        "server.c",
        "server.h",
        "setcpuaffinity.c",
        "setproctitle.c",
        "sha1.c",
        "sha1.h",
        "sha256.c",
        "sha256.h",
        "siphash.c",
        "slowlog.c",
        "slowlog.h",
        "solarisfixes.h",
        "sort.c",
        "sparkline.c",
        "sparkline.h",
        "stream.h",
        "syncio.c",
        "syscheck.h",
        "syscheck.c",
        "t_hash.c",
        "t_list.c",
        "t_set.c",
        "t_stream.c",
        "t_string.c",
        "t_zset.c",
        "timeout.c",
        "tls.c",
        "tracking.c",
        "util.c",
        "util.h", 
        "version.h",
        "ziplist.c",
        "ziplist.h",
        "zipmap.c",
        "zipmap.h",
        "zmalloc.c",
        "zmalloc.h",
    ]] + ["release.h" ,"deps/hiredis/sdscompat.h"],
    copts = COPTS,
    includes = [
        "deps/hiredis",
        "deps/linenoise",
        "deps/lua/src",
        "deps/hdr_histogram",
        "src",
    ],
    textual_hdrs = [
        "src/ae_select.c",
        "src/ae_epoll.c",
        "src/ae_kqueue.c",
        "src/ae_evport.c",
    ],
    deps = [
        ":hiredis",
        ":hiredis_ssl",
        ":linenoise",
        ":lua",
        ":libjemalloc",
        ":hdr_histogram",
    ],
)

cc_binary(
    name = "redis-server",
    deps = select({
            "@yad//platforms:focal": [ "@openssl1//:openssl", ],
            "@yad//platforms:jammy": [ "@openssl3//:openssl", ],
        }) + [
            ":redis-server_lib",
            ":libjemalloc",
            ":hiredis",
            ":hiredis_ssl",
            ":hdr_histogram",
        ],
    linkopts = [
        "-ldl",
        "-pthread",
        "-lssl",
        "-lcrypto",
        "-rdynamic",
    ],
)

pkg_tar(
    name = "server_tar",
    srcs = [
        ":redis-server",
    ],
    strip_prefix = ".",
    mode = "0755",
    package_dir = "/usr/bin",
    visibility = ["//visibility:public"],
)

pkg_tar(
    name = "cli_tar",
    srcs = [
        ":redis-cli",
    ],
    strip_prefix = ".",
    mode = "0755",
    package_dir = "/usr/bin",
    visibility = ["//visibility:public"],
)