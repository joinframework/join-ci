#!/bin/bash

HUGO_VERSION="0.152.2"
ARCH=$(uname -m)

if [ "$ARCH" = "x86_64" ]; then
    HUGO_ARCH="amd64"
elif [ "$ARCH" = "aarch64" ]; then
    HUGO_ARCH="arm64"
else
    echo "arch not supported : $ARCH"
    exit 1
fi

wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${HUGO_ARCH}.tar.gz
tar -xvzf hugo_extended_${HUGO_VERSION}_linux-${HUGO_ARCH}.tar.gz
mv hugo /usr/local/bin/
rm hugo_extended_${HUGO_VERSION}_linux-${HUGO_ARCH}.tar.gz LICENSE README.md
