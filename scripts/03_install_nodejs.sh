#!/bin/bash

NODE_MAJOR=24

curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key \
    | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] \
    https://deb.nodesource.com/node_${NODE_MAJOR}.x nodistro main" \
    > /etc/apt/sources.list.d/nodesource.list

apt-get update && apt-get -qq install nodejs
