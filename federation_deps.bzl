"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    http_archive(
        name = "rules_cc",
        strip_prefix = "rules_cc-master",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_cc/archive/master.zip",
          "https://github.com/bazelbuild/rules_cc/archive/master.zip"
      ],
    )

    http_archive(
        name = "rules_python",
        strip_prefix = "rules_python-master",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://github.com/bazelbuild/rules_python/archive/master.zip",
          "https://github.com/bazelbuild/rules_python/archive/master.zip"
      ],
    )

# ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",
      urls = ["https://github.com/abseil/abseil-cpp/archive/3df7b52a6ada51a72a23796b844549a7b282f1b8.zip","https://github.com/abseil/abseil-cpp/archive/3df7b52a6ada51a72a23796b844549a7b282f1b8.zip"],  # 2019-11-15T16:16:16Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "abseil-cpp-3df7b52a6ada51a72a23796b844549a7b282f1b8",
      sha256 = "0000f62fa2a2fc00939918f033f289a021788b69acaab929bfb65c9fdac64d17",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/c27acebba3b3c7d94209e0467b0a801db4af73ed.zip","https://github.com/google/googletest/archive/c27acebba3b3c7d94209e0467b0a801db4af73ed.zip"],  # 2019-11-15T22:30:15Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "googletest-c27acebba3b3c7d94209e0467b0a801db4af73ed",
      sha256 = "cb4d47400e12e60aa09ebabdae79774afe0e0d06455b0ec3c5b44e8a1b639802",
)

# ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",
      urls = ["https://github.com/google/benchmark/archive/c50ac68c50ff8da3827cd6720792117910d85666.zip","https://github.com/google/benchmark/archive/c50ac68c50ff8da3827cd6720792117910d85666.zip"],  # 2019-11-05T19:46:13Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "benchmark-c50ac68c50ff8da3827cd6720792117910d85666",
      sha256 = "9067442aa447e54cc144160420daf37fcd0663ccf3057ce2d87b9d7f6ad45d3f",
)

    # zlib pinned to 1.2.11
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      # Use the same URL twice to trick bazel into re-trying if connection fails
      urls = [
          "https://zlib.net/zlib-1.2.11.tar.gz",
          "https://zlib.net/zlib-1.2.11.tar.gz"
      ],
    )
