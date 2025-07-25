load(":base.bzl", "NONROOT", "distro_components", "unstable_distro_components")
load(":distro.bzl", "DISTROS", "UNSTABLE_DISTROS")
load("//:checksums.bzl", "ARCHITECTURES", "UNSTABLE_ARCHITECTURES")
load("@rules_pkg//:pkg.bzl", "pkg_tar")
load("@io_bazel_rules_docker//contrib:group.bzl", "group_entry", "group_file")
load("@io_bazel_rules_docker//contrib:passwd.bzl", "passwd_entry", "passwd_tar")

package(default_visibility = ["//visibility:public"])

NOBODY = 65534

# Create /etc/passwd with the root user
passwd_entry(
    name = "root_user",
    gid = 0,
    home = "/root",
    info = "root",
    shell = "/sbin/nologin",
    uid = 0,
    username = "root",
)

passwd_entry(
    name = "nobody_user",
    create_home = False,
    gid = NOBODY,
    home = "/nonexistent",
    info = "nobody",
    shell = "/sbin/nologin",
    uid = NOBODY,
    username = "nobody",
)

passwd_entry(
    name = "nonroot_user",
    gid = NONROOT,
    home = "/home/nonroot",
    info = "nonroot",
    shell = "/sbin/nologin",
    uid = NONROOT,
    username = "nonroot",
)

passwd_tar(
    name = "passwd",
    entries = [
        ":root_user",
        ":nobody_user",
        ":nonroot_user",
    ],
    passwd_file_pkg_dir = "etc",
)

# Create /etc/group with the root, tty, and staff groups
group_entry(
    name = "root_group",
    gid = 0,
    groupname = "root",
)

group_entry(
    name = "nobody_group",
    gid = NOBODY,
    groupname = "nobody",
)

group_entry(
    name = "nonroot_group",
    gid = NONROOT,
    groupname = "nonroot",
)

group_entry(
    name = "tty_group",
    gid = 5,
    groupname = "tty",
)

group_entry(
    name = "staff_group",
    gid = 50,
    groupname = "staff",
)

group_file(
    name = "group",
    entries = [
        ":root_group",
        ":nobody_group",
        ":tty_group",
        ":staff_group",
        ":nonroot_group",
    ],
)

pkg_tar(
    name = "group_tar",
    srcs = [":group"],
    mode = "0644",
    package_dir = "etc",
)

[distro_components(distro) for distro in DISTROS]
[unstable_distro_components(distro, UNSTABLE_ARCHITECTURES) for distro in UNSTABLE_DISTROS]
