load("//private/oci:defs.bzl", "sign_and_push_all")
load("//:checksums.bzl", "ARCHITECTURES", "BASE_ARCHITECTURES", "UNSTABLE_ARCHITECTURES")
load("//base:distro.bzl", "DISTROS", "LANGUAGE_DISTROS", "UNSTABLE_DISTROS")

package(default_visibility = ["//visibility:public"])

## STATIC
STATIC_VARIANTS = [
    ("latest", "static", "root"),
    ("nonroot", "static", "nonroot"),
    ("debug", "static_debug", "root"),
    ("debug-nonroot", "static_debug", "nonroot"),
]

UNSTABLE_VARIANTS = [
    ("latest", "static", "root"),
    ("nonroot", "static", "nonroot"),
]

STATIC = {
    "{REGISTRY}/{PROJECT_ID}/static:{COMMIT_SHA}": "//base:static_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/static-debian11:{COMMIT_SHA}": "//base:static_root_amd64_debian11",
}

STATIC |= {
    "{REGISTRY}/{PROJECT_ID}/static:" + tag_base + "-" + arch: "//base:" + label + "_" + user + "_" + arch + "_debian11"
    for arch in ARCHITECTURES
    for (tag_base, label, user) in STATIC_VARIANTS
}

# unstable
STATIC |= {
    "{REGISTRY}/{PROJECT_ID}/static:" + tag_base + "-" + arch: "//base:" + label + "_" + user + "_" + arch + "_unstable"
    for arch in UNSTABLE_ARCHITECTURES
    for (tag_base, label, user) in UNSTABLE_VARIANTS
}
# oci_image_index
STATIC |= {
    "{REGISTRY}/{PROJECT_ID}/static-" + distro + ":" + tag_base: "//base:" + label + "_" + user + "_" + distro
    for (tag_base, label, user) in UNSTABLE_VARIANTS
    for distro in UNSTABLE_DISTROS
}

# oci_image_index
STATIC |= {
    "{REGISTRY}/{PROJECT_ID}/static:" + tag_base: "//base:" + label + "_" + user + "_debian11"
    for (tag_base, label, user) in STATIC_VARIANTS
}

STATIC |= {
    "{REGISTRY}/{PROJECT_ID}/static-" + distro + ":" + tag_base + "-" + arch: "//base:" + label + "_" + user + "_" + arch + "_" + distro
    for arch in ARCHITECTURES
    for (tag_base, label, user) in STATIC_VARIANTS
    for distro in DISTROS
}

# oci_image_index
STATIC |= {
    "{REGISTRY}/{PROJECT_ID}/static-" + distro + ":" + tag_base: "//base:" + label + "_" + user + "_" + distro
    for (tag_base, label, user) in STATIC_VARIANTS
    for distro in DISTROS
}

## BASE
BASE_VARIANTS = [
    ("latest", "base", "root"),
    ("nonroot", "base", "nonroot"),
    ("debug", "debug", "root"),
    ("debug-nonroot", "debug", "nonroot"),
]

BASE = {
    "{REGISTRY}/{PROJECT_ID}/base:{COMMIT_SHA}": "//base:base_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/base-debian11:{COMMIT_SHA}": "//base:base_root_amd64_debian11",
}

BASE |= {
    "{REGISTRY}/{PROJECT_ID}/base:" + tag_base + "-" + arch: "//base:" + label + "_" + user + "_" + arch + "_debian11"
    for arch in ARCHITECTURES
    for (tag_base, label, user) in BASE_VARIANTS
}

# oci_image_index
BASE |= {
    "{REGISTRY}/{PROJECT_ID}/base:" + tag_base: "//base:" + label + "_" + user + "_debian11"
    for (tag_base, label, user) in BASE_VARIANTS
}

BASE |= {
    "{REGISTRY}/{PROJECT_ID}/base-" + distro + ":" + tag_base + "-" + arch: "//base:" + label + "_" + user + "_" + arch + "_" + distro
    for arch in ARCHITECTURES
    for (tag_base, label, user) in BASE_VARIANTS
    for distro in DISTROS
}

# oci_image_index
BASE |= {
    "{REGISTRY}/{PROJECT_ID}/base-" + distro + ":" + tag_base: "//base:" + label + "_" + user + "_" + distro
    for (tag_base, label, user) in BASE_VARIANTS
    for distro in DISTROS
}

## BASE NOSSL
BASE_NOSSL_VARIANTS = [
    ("latest", "base_nossl", "root"),
    ("nonroot", "base_nossl", "nonroot"),
    ("debug", "base_nossl_debug", "root"),
    ("debug-nonroot", "base_nossl_debug", "nonroot"),
]

BASE_NOSSL = {
    "{REGISTRY}/{PROJECT_ID}/base-nossl:{COMMIT_SHA}": "//base:base_nossl_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/base-nossl-debian11:{COMMIT_SHA}": "//base:base_nossl_root_amd64_debian11",
}

BASE_NOSSL |= {
    "{REGISTRY}/{PROJECT_ID}/base-nossl:" + tag_base + "-" + arch: "//base:" + label + "_" + user + "_" + arch + "_debian11"
    for arch in ARCHITECTURES
    for (tag_base, label, user) in BASE_NOSSL_VARIANTS
}

# oci_image_index
BASE_NOSSL |= {
    "{REGISTRY}/{PROJECT_ID}/base-nossl:" + tag_base: "//base:" + label + "_" + user + "_debian11"
    for (tag_base, label, user) in BASE_NOSSL_VARIANTS
}

BASE_NOSSL |= {
    "{REGISTRY}/{PROJECT_ID}/base-nossl-" + distro + ":" + tag_base + "-" + arch: "//base:" + label + "_" + user + "_" + arch + "_" + distro
    for arch in ARCHITECTURES
    for (tag_base, label, user) in BASE_NOSSL_VARIANTS
    for distro in DISTROS
}

# oci_image_index
BASE_NOSSL |= {
    "{REGISTRY}/{PROJECT_ID}/base-nossl-" + distro + ":" + tag_base: "//base:" + label + "_" + user + "_" + distro
    for (tag_base, label, user) in BASE_NOSSL_VARIANTS
    for distro in DISTROS
}

## CC
CC_VARIANTS = [
    ("latest", "cc", "root"),
    ("nonroot", "cc", "nonroot"),
    ("debug", "debug", "root"),
    ("debug-nonroot", "debug", "nonroot"),
]

CC = {
    "{REGISTRY}/{PROJECT_ID}/cc:{COMMIT_SHA}": "//cc:cc_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/cc-debian11:{COMMIT_SHA}": "//cc:cc_root_amd64_debian11",
}

CC |= {
    "{REGISTRY}/{PROJECT_ID}/cc:" + tag_base + "-" + arch: "//cc:" + label + "_" + user + "_" + arch + "_debian11"
    for arch in ARCHITECTURES
    for (tag_base, label, user) in CC_VARIANTS
}

# oci_image_index
CC |= {
    "{REGISTRY}/{PROJECT_ID}/cc:" + tag_base: "//cc:" + label + "_" + user + "_debian11"
    for (tag_base, label, user) in CC_VARIANTS
}

CC |= {
    "{REGISTRY}/{PROJECT_ID}/cc-" + distro + ":" + tag_base + "-" + arch: "//cc:" + label + "_" + user + "_" + arch + "_" + distro
    for arch in ARCHITECTURES
    for (tag_base, label, user) in CC_VARIANTS
    for distro in DISTROS
}

# oci_image_index
CC |= {
    "{REGISTRY}/{PROJECT_ID}/cc-" + distro + ":" + tag_base: "//cc:" + label + "_" + user + "_" + distro
    for (tag_base, label, user) in CC_VARIANTS
    for distro in DISTROS
}

## PYTHON3
PYTHON3_VARIATIONS = [
    ("latest", "python3", "root"),
    ("nonroot", "python3", "nonroot"),
    ("debug", "debug", "root"),
    ("debug-nonroot", "debug", "nonroot"),
]

PYTHON3 = {
    "{REGISTRY}/{PROJECT_ID}/python3:" + tag_base + "-" + arch: "//experimental/python3:" + label + "_" + user + "_" + arch + "_debian11"
    for arch in BASE_ARCHITECTURES
    for (tag_base, label, user) in PYTHON3_VARIATIONS
}

# oci_image_index
PYTHON3 |= {
    "{REGISTRY}/{PROJECT_ID}/python3:" + tag_base: "//experimental/python3:" + label + "_" + user + "_debian11"
    for (tag_base, label, user) in PYTHON3_VARIATIONS
}

PYTHON3 |= {
    "{REGISTRY}/{PROJECT_ID}/python3-" + distro + ":" + tag_base + "-" + arch: "//experimental/python3:" + label + "_" + user + "_" + arch + "_" + distro
    for arch in BASE_ARCHITECTURES
    for (tag_base, label, user) in PYTHON3_VARIATIONS
    for distro in LANGUAGE_DISTROS
}

# oci_image_index
PYTHON3 |= {
    "{REGISTRY}/{PROJECT_ID}/python3-" + distro + ":" + tag_base: "//experimental/python3:" + label + "_" + user + "_" + distro
    for (tag_base, label, user) in PYTHON3_VARIATIONS
    for distro in LANGUAGE_DISTROS
}

## NODEJS
NODEJS_VERSIONS = [
    "14",
    "16",
    "18",
]

NODEJS_VARIATIONS = [
    ("latest", "", "root"),
    ("nonroot", "", "nonroot"),
    ("debug", "_debug", "root"),
    ("debug-nonroot", "_debug", "nonroot"),
]

NODEJS = {
    "{REGISTRY}/{PROJECT_ID}/nodejs" + version + "-" + distro + ":" + tag_base + "-" + arch: "//nodejs:nodejs" + version + label + "_" + user + "_" + arch + "_" + distro
    for arch in BASE_ARCHITECTURES
    for distro in LANGUAGE_DISTROS
    for version in NODEJS_VERSIONS
    for (tag_base, label, user) in NODEJS_VARIATIONS
}

# oci_image_index
NODEJS = {
    "{REGISTRY}/{PROJECT_ID}/nodejs" + version + "-" + distro + ":" + tag_base: "//nodejs:nodejs" + version + label + "_" + user + "_" + distro
    for distro in LANGUAGE_DISTROS
    for version in NODEJS_VERSIONS
    for (tag_base, label, user) in NODEJS_VARIATIONS
}

NODEJS |= {
    "{REGISTRY}/{PROJECT_ID}/nodejs" + version + ":" + tag_base + "-" + arch: "//nodejs:nodejs" + version + label + "_" + user + "_" + arch + "_debian11"
    for arch in BASE_ARCHITECTURES
    for version in NODEJS_VERSIONS
    for (tag_base, label, user) in NODEJS_VARIATIONS
}

# oci_image_index
NODEJS |= {
    "{REGISTRY}/{PROJECT_ID}/nodejs" + version + ":" + tag_base: "//nodejs:nodejs" + version + label + "_" + user + "_debian11"
    for version in NODEJS_VERSIONS
    for (tag_base, label, user) in NODEJS_VARIATIONS
}

# these are existing legacy tags that are scheduled to be removed

# TODO(loosebazooka): i can't figure out the scheming of the legacy tags. why 14 only has amd64 eventhough cloudbuild_docker.sh says otherwise?
LEGACY_NODEJS_TAGS = {
    "{REGISTRY}/{PROJECT_ID}/nodejs:14": "//nodejs:nodejs14_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/nodejs:14-debug": "//nodejs:nodejs14_debug_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/nodejs-debian11:14": "//nodejs:nodejs14_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/nodejs-debian11:14-debug": "//nodejs:nodejs14_debug_root_amd64_debian11",
}

LEGACY_NODEJS_TAGS |= {
    "{REGISTRY}/{PROJECT_ID}/nodejs:" + tag_base + "-" + arch: "//nodejs:nodejs16" + suffix + "_root_" + arch + "_debian11"
    for arch in BASE_ARCHITECTURES
    for (tag_base, suffix) in [
        ("16", ""),
        ("16-debug", "_debug"),
    ]
}

LEGACY_NODEJS_TAGS |= {
    "{REGISTRY}/{PROJECT_ID}/nodejs-" + distro + ":" + tag_base + "-" + arch: "//nodejs:nodejs16" + suffix + "_root_" + arch + "_" + distro
    for arch in BASE_ARCHITECTURES
    for (tag_base, suffix) in [
        ("16", ""),
        ("16-debug", "_debug"),
    ]
    for distro in LANGUAGE_DISTROS
}

LEGACY_NODEJS_TAGS |= {
    "{REGISTRY}/{PROJECT_ID}/nodejs:" + tag_base + "-" + arch: "//nodejs:nodejs18" + suffix + "_root_" + arch + "_debian11"
    for arch in BASE_ARCHITECTURES
    for (tag_base, suffix) in [
        ("latest", ""),
        ("debug", "_debug"),
        ("18", ""),
        ("18-debug", "_debug"),
    ]
}

LEGACY_NODEJS_TAGS |= {
    "{REGISTRY}/{PROJECT_ID}/nodejs-" + distro + ":" + tag_base + "-" + arch: "//nodejs:nodejs18" + suffix + "_root_" + arch + "_" + distro
    for arch in BASE_ARCHITECTURES
    for (tag_base, suffix) in [
        ("latest", ""),
        ("debug", "_debug"),
        ("18", ""),
        ("18-debug", "_debug"),
    ]
    for distro in LANGUAGE_DISTROS
}

## JAVA_BASE
JAVA_ARCHITECTURES = BASE_ARCHITECTURES + [
    "s390x",
    "ppc64le",
]

JAVA_BASE_VARIATIONS = [
    ("latest", "root"),
    ("nonroot", "nonroot"),
    ("debug", "debug_root"),
    ("debug-nonroot", "debug_nonroot"),
]

JAVA_BASE = {
    "{REGISTRY}/{PROJECT_ID}/java-base:latest": "//java:java_base_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java-base:nonroot": "//java:java_base_nonroot_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java-base:debug": "//java:java_base_debug_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java-base:debug-nonroot": "//java:java_base_debug_nonroot_amd64_debian11",
}

JAVA_BASE |= {
    "{REGISTRY}/{PROJECT_ID}/java-base-debian11:" + tag_base + "-" + arch: "//java:java_base_" + label + "_" + arch + "_debian11"
    for arch in JAVA_ARCHITECTURES
    for (tag_base, label) in JAVA_BASE_VARIATIONS
}

# oci_image_index
JAVA_BASE |= {
    "{REGISTRY}/{PROJECT_ID}/java-base-debian11:" + tag_base: "//java:java_base_" + label + "_debian11"
    for (tag_base, label) in JAVA_BASE_VARIATIONS
}

## JAVA11
JAVA11_VARIATIONS = [
    ("latest", "root"),
    ("nonroot", "nonroot"),
    ("debug", "debug_root"),
    ("debug-nonroot", "debug_nonroot"),
]

JAVA11 = {
    "{REGISTRY}/{PROJECT_ID}/java11:latest": "//java:java11_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java11:nonroot": "//java:java11_nonroot_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java11:debug": "//java:java11_debug_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java11:debug-nonroot": "//java:java11_debug_nonroot_amd64_debian11",
}

JAVA11 |= {
    "{REGISTRY}/{PROJECT_ID}/java11-debian11:" + tag_base + "-" + arch: "//java:java11_" + label + "_" + arch + "_debian11"
    for (tag_base, label) in JAVA11_VARIATIONS
    for arch in JAVA_ARCHITECTURES
}

# oci_image_index
JAVA11 |= {
    "{REGISTRY}/{PROJECT_ID}/java11-debian11:" + tag_base: "//java:java11_" + label + "_debian11"
    for (tag_base, label) in JAVA11_VARIATIONS
}

## JAVA17
JAVA17_VARIATIONS = [
    ("latest", "root"),
    ("nonroot", "nonroot"),
    ("debug", "debug_root"),
    ("debug-nonroot", "debug_nonroot"),
]

JAVA17 = {
    "{REGISTRY}/{PROJECT_ID}/java17:latest": "//java:java17_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java17:nonroot": "//java:java17_nonroot_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java17:debug": "//java:java17_debug_root_amd64_debian11",
    "{REGISTRY}/{PROJECT_ID}/java17:debug-nonroot": "//java:java17_debug_nonroot_amd64_debian11",
}

JAVA17 |= {
    "{REGISTRY}/{PROJECT_ID}/java17-debian11:" + tag_base + "-" + arch: "//java:java17_" + label + "_" + arch + "_debian11"
    for (tag_base, label) in JAVA17_VARIATIONS
    for arch in JAVA_ARCHITECTURES
}

# oci_image_index
JAVA17 |= {
    "{REGISTRY}/{PROJECT_ID}/java17-debian11:" + tag_base: "//java:java17_" + label + "_debian11"
    for (tag_base, label) in JAVA17_VARIATIONS
}

## JETTY
JETTY = {
    "{REGISTRY}/{PROJECT_ID}/java/jetty:latest": "//java/jetty:jetty_java11_debian11",
    "{REGISTRY}/{PROJECT_ID}/java/jetty:debug": "//java/jetty:jetty_java11_debug_debian11",
    "{REGISTRY}/{PROJECT_ID}/java/jetty:java11": "//java/jetty:jetty_java11_debian11",
    "{REGISTRY}/{PROJECT_ID}/java/jetty:java11-debug": "//java/jetty:jetty_java11_debug_debian11",
    "{REGISTRY}/{PROJECT_ID}/java-debian11/jetty:latest": "//java/jetty:jetty_java11_debian11",
    "{REGISTRY}/{PROJECT_ID}/java-debian11/jetty:java11": "//java/jetty:jetty_java11_debian11",
    "{REGISTRY}/{PROJECT_ID}/java-debian11/jetty:debug": "//java/jetty:jetty_java11_debug_debian11",
    "{REGISTRY}/{PROJECT_ID}/java-debian11/jetty:java11-debug": "//java/jetty:jetty_java11_debug_debian11",
}

ALL = {}

ALL |= STATIC

ALL |= BASE

ALL |= BASE_NOSSL

ALL |= CC

ALL |= PYTHON3

ALL |= NODEJS

ALL |= LEGACY_NODEJS_TAGS

ALL |= JAVA_BASE

ALL |= JAVA11

ALL |= JAVA17

ALL |= JETTY

sign_and_push_all(
    name = "sign_and_push",
    images = ALL,
)
