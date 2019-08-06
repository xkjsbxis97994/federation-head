#!/usr/bin/env bash

set -eu

if [ "${TRAVIS_OS_NAME}" != linux ]; then
    echo "Not a Linux build; skipping installation"
    exit 0
fi

echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | \
sudo tee /etc/apt/sources.list.d/bazel.list
curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -
sudo apt-get update && sudo apt-get install -y bazel gcc-4.9 g++-4.9 clang-3.9
