FROM ubuntu:22.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    netbase ca-certificates git build-essential cmake lcov libtrace-tools \
    libssl-dev bridge-utils iproute2 net-tools wget curl
