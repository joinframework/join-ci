#!/bin/bash

HUGO_VERSION="0.152.2"
ARCH=$(dpkg --print-architecture)

if [ "$ARCH" != "amd64" ]; then
    echo "hugo not needed for $ARCH, skipping"
    exit 0
fi

wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-${ARCH}.tar.gz
wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_checksums.txt
grep "hugo_extended_${HUGO_VERSION}_linux-${ARCH}.tar.gz" hugo_${HUGO_VERSION}_checksums.txt | sha256sum -c -
tar -xzf hugo_extended_${HUGO_VERSION}_linux-${ARCH}.tar.gz
mv hugo /usr/local/bin/
rm hugo_extended_${HUGO_VERSION}_linux-${ARCH}.tar.gz hugo_${HUGO_VERSION}_checksums.txt LICENSE README.md
