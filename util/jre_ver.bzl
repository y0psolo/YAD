"""Function to extract JRE version from a Debian openjdk version"""

def jre_ver(version):
    """Extract JRE version from a Debian openjdk package version.

    Args:
      version: version debian packages versions are of the form
        openjdk-8_8u272~b09-0ubuntu1
        openjdk-lts_11.0.11+9-0ubuntu2~20.10
    Returns:
      java version number like 8_8u272 or 11.0.11
    """
    if version.startswith("8u"):
        return version.split("-")[0]
    else:
        return version.split("+")[0]
