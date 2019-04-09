"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():

    http_archive(
      name = "com_google_absl",
      urls = ["https://github.com/abseil/abseil-cpp/archive/93dfcf74cb5fccae3da07897d8613ae6cab958a0.zip"],
      strip_prefix = "abseil-cpp-93dfcf74cb5fccae3da07897d8613ae6cab958a0",
      sha256 = "1ecd34c47663936f2b043c22f3c91079b846286511248aafbb6441f8a162abfe",
    )

