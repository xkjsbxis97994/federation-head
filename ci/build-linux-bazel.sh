#!/usr/bin/env bash

set -e

bazel build --curses=no //...:all
bazel test --curses=no //...:all
bazel test --curses=no //...:all --define absl=1
