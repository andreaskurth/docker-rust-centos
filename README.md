# Docker Container for Rust on CentOS

## Usage

You can use this container to build Cargo packages for CentOS.  Simply change to the root directory
of a Cargo project, create an appropriate target directory
```sh
mkdir -p target/centos
```
and invoke Cargo in the container
```sh
docker run \
    --user $(id -u):$(id -g) \
    -t --rm \
    -v "$PWD:/source" \
    -v "$PWD/target/centos:/source/target" \
    accuminium/rust-centos:7.4.1708_stable \
    cargo build --release
```
Adapt the version of the container (`7.4.1708_stable` in this example) as needed.
