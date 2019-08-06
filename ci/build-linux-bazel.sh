#!/usr/bin/env bash

set -e
echo "build-linux-bazel.sh:"

bazel build --curses=no //...:all
bazel test --curses=no //...:all
bazel test --curses=no //...:all --define absl=1
