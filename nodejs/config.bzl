NODEJS_DISTROS = ["debian13"]
NODEJS_ARCHITECTURES = {
    "debian13": {
        "22": ["amd64", "arm64", "arm", "s390x", "ppc64le", "loong64"],
        "24": ["amd64", "arm64", "s390x", "ppc64le", "loong64"],
        "26": ["amd64", "arm64", "s390x", "ppc64le", "loong64"],
    },
}
NODEJS_MAJOR_VERSIONS = ["22", "24", "26"]

NODEJS_PACKAGES = {
    "22": [],
    "24": [],
    "26": [
        "libatomic1",
    ],
}
