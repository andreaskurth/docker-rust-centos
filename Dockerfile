FROM centos:7.4.1708

RUN yum update -y && \
    yum group install "Development Tools" -y && \
    yum clean all

ENV HOME /root

WORKDIR /root
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain stable
ENV PATH /root/.cargo/bin:$PATH

WORKDIR /source
