#!/usr/bin/env bash
set -e
TAG="eager-garden-crimson-delta"
LIB="linen-flint.a"
URL="https://github.com/clearrobin/teaklemma/releases/download/${TAG}/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
