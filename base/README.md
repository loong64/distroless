# Documentation for `gcr.io/loong64/base`, `gcr.io/loong64/base-nossl` and `gcr.io/loong64/static`

## Image Contents

This image contains a minimal Linux, glibc-based system. It is intended for use directly by "mostly-statically compiled" languages like Go, Rust or D.

Statically compiled applications (Go) that do not require libc can use the `gcr.io/loong64/static` image, which contains:

* ca-certificates
* A /etc/passwd entry for a root user
* A /tmp directory
* tzdata

Applications that require libc but do not need libssl can use the `gcr.io/loong64/base-nossl`, which contains all
of the packages in `gcr.io/loong64/static`, and

* glibc

Most other applications (and Go apps that require libc/cgo) should start with `gcr.io/loong64/base`, which contains all
of the packages in `gcr.io/loong64/static`, and 

* glibc
* libssl

## Usage

Users are expected to include their compiled application and set the correct cmd in their image.
