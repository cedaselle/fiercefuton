#!/usr/bin/env bash
set -e
TAG="gentle-harbor-gentle-badger"
LIB="raw-alloy.a"
URL="https://github.com/cedaselle/fiercefuton/releases/download/${TAG}/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
