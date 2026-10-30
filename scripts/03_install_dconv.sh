#!/bin/bash

DCONV_VERSION="1.1.0"

wget https://github.com/joinframework/dconv/releases/download/v${DCONV_VERSION}/libdconv-dev_${DCONV_VERSION}_all.deb
apt-get -qq install ./libdconv-dev_${DCONV_VERSION}_all.deb
rm libdconv-dev_${DCONV_VERSION}_all.deb
