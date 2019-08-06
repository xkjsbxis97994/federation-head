#!/usr/bin/env bash

set -e
echo "build-linux-bazel.sh:"

cd test

bazel test --curses=no //...:all

bazel test @com_google_absl//absl/...:all

bazel test @com_google_googletest//googletest/...:all --define absl=1
