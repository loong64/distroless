load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

# For the debug image
def repositories():
    http_file(
        name = "busybox_loong64",
        executable = True,
        sha256 = "9c1974095761535ddf3e96de0c7eff163e28798b77f35a6b44b374942d156649",
        urls = ["https://github.com/loong64/busybox/releases/download/1_37_0/busybox"],
    )
