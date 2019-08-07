"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
# ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",
      urls = ["https://github.com/abseil/abseil-cpp/archive/67222ffc4c83d918ce8395aa61769eeb77df4c4d.zip"],  # 2019-08-06T18:16:08Z
      strip_prefix = "abseil-cpp-67222ffc4c83d918ce8395aa61769eeb77df4c4d",
      sha256 = "84fe441b69093cac2f3c7626693e7cf50b0f61053e096d713b778090d50513fe",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/f64f7bd36735e14f520d8813af5b7cb780b7e164.zip"],  # 2019-08-06T19:51:51Z
      strip_prefix = "googletest-f64f7bd36735e14f520d8813af5b7cb780b7e164",
      sha256 = "d056573fc7c2add69c62cc23a9be5d5625fcaf1bacb095dd813191a51de71696",
)

# ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",
      urls = ["https://github.com/google/benchmark/archive/140fc22ab22c770b44228ec6b38c745fc610269d.zip"],  # 2019-08-06T10:36:36Z
      strip_prefix = "benchmark-140fc22ab22c770b44228ec6b38c745fc610269d",
      sha256 = "02d5440e0dcd2f63b2d30a92ab6fc20bbbcabdeee1fedd76b55daeaa6b9b771a",
)

    # zlib pinned to 1.2.11
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      urls = ["https://zlib.net/zlib-1.2.11.tar.gz"],
    )
