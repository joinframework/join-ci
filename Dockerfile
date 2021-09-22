FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    netbase ca-certificates build-essential lcov libssl-dev wget curl

RUN wget https://cmake.org/files/v3.20/cmake-3.20.5-linux-x86_64.sh && \
    chmod a+x cmake-3.20.5-linux-x86_64.sh && ./cmake-3.20.5-linux-x86_64.sh --skip-license --prefix=/usr/local && \
    rm cmake-3.20.5-linux-x86_64.sh
