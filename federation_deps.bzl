"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-01-23T13:50:17Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/8774a4decd63f45a636f40a75700c06b7ea9d30a.zip",
           "https://github.com/bazelbuild/rules_cc/archive/8774a4decd63f45a636f40a75700c06b7ea9d30a.zip"
      ],
      strip_prefix = "rules_cc-8774a4decd63f45a636f40a75700c06b7ea9d30a",
      sha256 = "8ff3f853e6e24afacd07a75e86c193532c3450659303a1825184cbf7fa79b150",
    )

    # ********** rules_python *****************
    http_archive(
      name = "rules_python",  # 2019-12-05T03:53:08Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip",
           "https://github.com/bazelbuild/rules_python/archive/38f86fb55b698c51e8510c807489c9f4e047480e.zip"
      ],
      strip_prefix = "rules_python-38f86fb55b698c51e8510c807489c9f4e047480e",
      sha256 = "7d64815f4b22400bed0f1b9da663037e1578573446b7bc78f20f24b2b5459bb9",
    )

    # ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",  # 2020-01-24T20:27:04Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/44427702614d7b86b064ba06a390f5eb2f85dbf6.zip",
           "https://github.com/abseil/abseil-cpp/archive/44427702614d7b86b064ba06a390f5eb2f85dbf6.zip"
      ],
      strip_prefix = "abseil-cpp-44427702614d7b86b064ba06a390f5eb2f85dbf6",
      sha256 = "373440690858e7c33779fda0a804c5a29a9b1c18b487be6380395cb2f4334859",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-01-21T21:26:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/10b1902d893ea8cc43c69541d70868f91af3646b.zip",
           "https://github.com/google/googletest/archive/10b1902d893ea8cc43c69541d70868f91af3646b.zip"
      ],
      strip_prefix = "googletest-10b1902d893ea8cc43c69541d70868f91af3646b",
      sha256 = "7c7709af5d0c3c2514674261f9fc321b3f1099a2c57f13d0e56187d193c07e81",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-01-14T20:21:24Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/daff5fead3fbe22c6fc58310ca3f49caf117f185.zip",
           "https://github.com/google/benchmark/archive/daff5fead3fbe22c6fc58310ca3f49caf117f185.zip"
      ],
      strip_prefix = "benchmark-daff5fead3fbe22c6fc58310ca3f49caf117f185",
      sha256 = "771b0fcb640cf2ae2b0e552c1a188b23a6777e0f0467b855574eab41360f58be",
    )

    # ********** zlib (pinned to 1.2.11) *****************
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
