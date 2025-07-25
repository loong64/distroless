# AUTO GENERATED
load("@distroless//private/remote:debian_archive.bzl", "debian_archive")

def repositories():
    debian_archive(
        name = "loong64_unstable_base-files",
        package_name = "base-files",
        sha256 = "49252960b1daa4deb32f428ccbeb4d0e29392087ccba870a1db9f4b4a96807f2",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250701T012910Z/pool-loong64/main/b/base-files/base-files_13.8_loong64.deb"],
    )
    debian_archive(
        name = "loong64_unstable_ca-certificates",
        package_name = "ca-certificates",
        sha256 = "ef590f89563aa4b46c8260d49d1cea0fc1b181d19e8df3782694706adf05c184",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250701T012910Z/pool/main/c/ca-certificates/ca-certificates_20250419_all.deb"],
    )
    debian_archive(
        name = "loong64_unstable_libc-bin",
        package_name = "libc-bin",
        sha256 = "373143dc4968ac28e11318b01bb5305d010be485ebaadc445a650a6115050151",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250701T012910Z/pool-loong64/main/g/glibc/libc-bin_2.41-9_loong64.deb"],
    )
    debian_archive(
        name = "loong64_unstable_libc6",
        package_name = "libc6",
        sha256 = "bb56f20aad79cb075819d3fc677df7fc37ecade2259a50a6c9e21688c18b0038",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250701T012910Z/pool-loong64/main/g/glibc/libc6_2.41-9_loong64.deb"],
    )
    debian_archive(
        name = "loong64_unstable_netbase",
        package_name = "netbase",
        sha256 = "76bafa92947ebd37b0a6f9ec6570412041f56edebc1c66d323731216d318471e",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250701T012910Z/pool/main/n/netbase/netbase_6.5_all.deb"],
    )
    debian_archive(
        name = "loong64_unstable_openssl",
        package_name = "openssl",
        sha256 = "0f03580165b1131ec78c3c8ceae4c43dc12b3cfdebfd595973eecc6198ee416a",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250701T012910Z/pool-loong64/main/o/openssl/openssl_3.5.0-2_loong64.deb"],
    )
    debian_archive(
        name = "loong64_unstable_tzdata",
        package_name = "tzdata",
        sha256 = "5f1b0cb03200efd1e1e9d185d366ac7ccc61f27de491cf71fc468b2f8ed6f59b",
        urls = ["https://snapshot.debian.org/archive/debian-ports/20250701T012910Z/pool/main/t/tzdata/tzdata_2025b-4_all.deb"],
    )
