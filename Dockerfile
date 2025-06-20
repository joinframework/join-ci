FROM ubuntu:24.04

ENV LIB=lib64
ENV PLATFORM=linux64

SHELL ["/bin/bash", "-c"]

RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/99local && \
    echo 'APT::Install-Suggests   "0";' >> /etc/apt/apt.conf.d/99local && \
    echo 'APT::Get::Assume-Yes    "1";' >> /etc/apt/apt.conf.d/99local

RUN apt-get update && apt-get upgrade && rm -rf /var/lib/apt/lists/*

WORKDIR /tmp/dir

COPY scripts/01*.sh .
RUN apt-get update && bash -xe ./01*.sh && rm -rf * && rm -rf /var/lib/apt/lists/*

WORKDIR /github/workspace

CMD ["/bin/bash"]
