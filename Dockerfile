FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    wget ca-certificates build-essential lcov libssl-dev

RUN wget https://cmake.org/files/v3.16/cmake-3.16.3-Linux-x86_64.sh && \
    chmod a+x cmake-3.16.3-Linux-x86_64.sh && ./cmake-3.16.3-Linux-x86_64.sh --skip-license --prefix=/usr/local && \
    rm cmake-3.16.3-Linux-x86_64.sh
