FROM centos:7.6.1810

RUN yum update -y && \
    yum group install "Development Tools" -y && \
    yum clean all

ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo
ENV PATH $CARGO_HOME/bin:$PATH

RUN mkdir -p "$CARGO_HOME" && mkdir -p "$RUSTUP_HOME" && \
    curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain 1.35.0 && \
    chmod -R a=rwX $CARGO_HOME

WORKDIR /source
