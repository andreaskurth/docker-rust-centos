# Docker Image for Rust on CentOS

## Usage

First, pull the image from Docker Hub (adapt the tag if necessary):
```sh
docker pull accuminium/rust-centos:7.4.1708
```

You can then use that image to compile Rust projects for that CentOS version.  For instance,
change to the root directory of a Cargo project and run
```sh
docker run -t --rm \
    -v "$PWD:/source" \
    -v "$PWD/target/centos:/source/target" \
    accuminium/rust-centos:7.4.1708 \
    cargo build --release
```
