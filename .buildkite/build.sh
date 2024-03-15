#!/bin/bash
set -eux
apt-get update -q
apt-get install -qy pdal cmake

rm -rf build

CMAKE_OVERRIDES=
if [ -n "${BUILDKITE_BUILD_NUMBER}" ]; then
    CMAKE_OVERRIDES="-DCPACK_DEBIAN_PACKAGE_RELEASE=${BUILDKITE_BUILD_NUMBER}"
fi
cmake -B build -S . ${CMAKE_OVERRIDES}
cmake --build build
pushd build
cpack build -G DEB
popd
