#!/bin/bash

HUGO_VERSION="0.152.2"

wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz
tar -xvzf hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz
mv hugo /usr/local/bin/
rm hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz LICENSE README.md
