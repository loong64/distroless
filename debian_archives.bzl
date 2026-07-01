# AUTO GENERATED
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def repositories():
    http_file(
        name = "loong64_unstable_base-files",
        downloaded_file_path = "base-files_14_loong64.deb",
        sha256 = "b17dfbb27cdb5e014379a7d8051645160ef9041c1d57bf6fdd61eb8499979589",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20260701T015253Z/pool-loong64/main/b/base-files/base-files_14_loong64.deb"],
    )
    http_file(
        name = "loong64_unstable_ca-certificates",
        downloaded_file_path = "ca-certificates_20260601_all.deb",
        sha256 = "3269df8178f5402093a57c754810f8ce59e1a0cf9361aa72252bf3186cfc32d7",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20260701T015253Z/pool/main/c/ca-certificates/ca-certificates_20260601_all.deb"],
    )
    http_file(
        name = "loong64_unstable_libc-bin",
        downloaded_file_path = "libc-bin_2.42-6_loong64.deb",
        sha256 = "3155634be4def6e65ff5bf5d1ebf381cafad44f749fcca3787206c9e9fc1ad78",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20260701T015253Z/pool-loong64/main/g/glibc/libc-bin_2.42-6_loong64.deb"],
    )
    http_file(
        name = "loong64_unstable_libc6",
        downloaded_file_path = "libc6_2.42-6_loong64.deb",
        sha256 = "e08fdb66d0a7676b5bc6995230d7d65578a2e1faba8332d94b41e1997c99f1fb",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20260701T015253Z/pool-loong64/main/g/glibc/libc6_2.42-6_loong64.deb"],
    )
    http_file(
        name = "loong64_unstable_netbase",
        downloaded_file_path = "netbase_6.5_all.deb",
        sha256 = "76bafa92947ebd37b0a6f9ec6570412041f56edebc1c66d323731216d318471e",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20260701T015253Z/pool/main/n/netbase/netbase_6.5_all.deb"],
    )
    http_file(
        name = "loong64_unstable_openssl",
        downloaded_file_path = "openssl_3.5.4-1_loong64.deb",
        sha256 = "ca4052c5109ab6b43b32bc57828a54f80a09368ddaaac043317a1ca492f2c93e",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20260701T015253Z/pool-loong64/main/o/openssl/openssl_3.5.4-1_loong64.deb"],
    )
    http_file(
        name = "loong64_unstable_tzdata",
        downloaded_file_path = "tzdata_2026b-1_all.deb",
        sha256 = "33bf30639f45caf6472baa7a760e5e16ee4e4f8c96082ca85fd61910c317c82f",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20260701T015253Z/pool/main/t/tzdata/tzdata_2026b-1_all.deb"],
    )
