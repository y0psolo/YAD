def java_version(version):
    if version.startswith("2"):
        return "8"
    if version.startswith("3"):
        return "11"
    return ""