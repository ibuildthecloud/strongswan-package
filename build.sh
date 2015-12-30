#!/bin/bash
set -e

rm -rf dist
mkdir -p dist/artifacts

VERSION=5.3.5

docker build --build-arg VERSION=${VERSION} -t strongswan-build .
docker run --rm strongswan-build cat strongswan-${VERSION}.tar.xz > dist/artifacts/strongswan-${VERSION}.tar.xz
