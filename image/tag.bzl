def tag():
    return select({
        "//platforms:k8_cpu_jammy_opt": "amd64_22.04",
        "//platforms:aarch64_cpu_jammy_opt": "arm64_22.04",
        "//platforms:k8_cpu_jammy_dbg": "amd64_22.04_debug",
        "//platforms:aarch64_cpu_jammy_dbg": "arm64_22.04_debug",
        "//platforms:k8_cpu_focal_opt": "amd64_20.04",
        "//platforms:aarch64_cpu_focal_opt": "arm64_20.04",
        "//platforms:k8_cpu_focal_dbg": "amd64_20.04_debug",
        "//platforms:aarch64_cpu_focal_dbg": "arm64_20.04_debug",
        "//platforms:k8_cpu_bionic_opt": "amd64_18.04",
        "//platforms:aarch64_cpu_bionic_opt": "arm64_18.04",
        "//platforms:k8_cpu_bionic_dbg": "amd64_18.04_debug",
        "//platforms:aarch64_cpu_bionic_dbg": "arm64_18.04_debug",
    })

def copt_tag():
    return select({
        "//platforms:opt_or_fastbuild": "",
        "//platforms:debug": "_debug",
    })

def arch_tag():
    return select({
        "//platforms:k8_cpu": "amd64",
        "//platforms:aarch64_cpu": "arm64",
    })

def dist_tag():
    return select({
        "//platforms:jammy": "22.04",
        "//platforms:focal": "20.04",
        "//platforms:bionic": "18.04",
    })