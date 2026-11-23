#!/usr/bin/env bash
set -e
REPO="rowanrulune/vintageplanetlab"
TAG="crimson-forest-golden-canyon"
LIB="focused-amplifier.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ main.cpp "$LIB" -pthread -std=c++17 -O2 -o app && ./app
