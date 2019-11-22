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
      urls = ["https://github.com/abseil/abseil-cpp/archive/bcaae6009c0833b73c6fa7bdd972921d8081a724.zip","https://github.com/abseil/abseil-cpp/archive/bcaae6009c0833b73c6fa7bdd972921d8081a724.zip"],  # 2019-11-20T22:01:15Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "abseil-cpp-bcaae6009c0833b73c6fa7bdd972921d8081a724",
      sha256 = "13dca5dbe5f3f32965f0b969cf2f5358aeb4d2c26f86eeaf4cf14b708b4571d9",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/200ff599496e20f4e39566feeaf2f6734ca7570f.zip","https://github.com/google/googletest/archive/200ff599496e20f4e39566feeaf2f6734ca7570f.zip"],  # 2019-11-20T19:16:54Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "googletest-200ff599496e20f4e39566feeaf2f6734ca7570f",
      sha256 = "ba5b04a4849246e7c16ba94227eed46486ef942f61dc8b78609732543c19c9f4",
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
