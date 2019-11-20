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
      urls = ["https://github.com/abseil/abseil-cpp/archive/2103fd9acdf58279f739860bff3f8c9f4b845605.zip","https://github.com/abseil/abseil-cpp/archive/2103fd9acdf58279f739860bff3f8c9f4b845605.zip"],  # 2019-11-19T15:27:57Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "abseil-cpp-2103fd9acdf58279f739860bff3f8c9f4b845605",
      sha256 = "786c0133154af78c7b00a99d0fe3bb39e6f4fcc5e2b34c2bb1a999d5438ea812",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/50cfbb726b26700d143ce5bb55c0b5e86de7a1e6.zip","https://github.com/google/googletest/archive/50cfbb726b26700d143ce5bb55c0b5e86de7a1e6.zip"],  # 2019-11-19T16:25:59Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "googletest-50cfbb726b26700d143ce5bb55c0b5e86de7a1e6",
      sha256 = "013f2654e67c7f5995deb718398c6327cd28d36fbf16355271b845498c935232",
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
