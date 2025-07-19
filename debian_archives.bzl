# AUTO GENERATED
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def repositories():
    http_file(
        name = "loong64_unstable_base-files",
        downloaded_file_path = "base-files_14_loong64.deb",
        sha256 = "b17dfbb27cdb5e014379a7d8051645160ef9041c1d57bf6fdd61eb8499979589",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250903T195146Z/pool-loong64/main/b/base-files/base-files_14_loong64.deb"],
    )
    http_file(
        name = "loong64_unstable_ca-certificates",
        downloaded_file_path = "ca-certificates_20250419_all.deb",
        sha256 = "ef590f89563aa4b46c8260d49d1cea0fc1b181d19e8df3782694706adf05c184",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250903T195146Z/pool/main/c/ca-certificates/ca-certificates_20250419_all.deb"],
    )
    http_file(
        name = "loong64_unstable_libc-bin",
        downloaded_file_path = "libc-bin_2.41-12_loong64.deb",
        sha256 = "ded156d01e094b7c256619dea87a5a09768b4e5c3a0b88e2a83cfa35063b7885",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250903T195146Z/pool-loong64/main/g/glibc/libc-bin_2.41-12_loong64.deb"],
    )
    http_file(
        name = "loong64_unstable_libc6",
        downloaded_file_path = "libc6_2.41-12_loong64.deb",
        sha256 = "9d4b2a028de31e80d6202cd2a5bea665cefd2b9ab9ebd48ec86a2d23a7bacd1f",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250903T195146Z/pool-loong64/main/g/glibc/libc6_2.41-12_loong64.deb"],
    )
    http_file(
        name = "loong64_unstable_netbase",
        downloaded_file_path = "netbase_6.5_all.deb",
        sha256 = "76bafa92947ebd37b0a6f9ec6570412041f56edebc1c66d323731216d318471e",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250903T195146Z/pool/main/n/netbase/netbase_6.5_all.deb"],
    )
    http_file(
        name = "loong64_unstable_openssl",
        downloaded_file_path = "openssl_3.5.2-1_loong64.deb",
        sha256 = "de9e22393d09b2a8670d0f6149ecd2ca95344c13b31fed38fe705a82ec0b6859",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250903T195146Z/pool-loong64/main/o/openssl/openssl_3.5.2-1_loong64.deb"],
    )
    http_file(
        name = "loong64_unstable_tzdata",
        downloaded_file_path = "tzdata_2025b-5_all.deb",
        sha256 = "776aa0b1cac80b6c2f7a31bb11b5cceecfc17846a50eb14924249fd13e09e2c8",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250903T195146Z/pool/main/t/tzdata/tzdata_2025b-5_all.deb"],
    )
