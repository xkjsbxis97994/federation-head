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
      urls = ["https://github.com/abseil/abseil-cpp/archive/e96ae2203b80d5ae2e0b7abe0c77b722b224b16d.zip","https://github.com/abseil/abseil-cpp/archive/e96ae2203b80d5ae2e0b7abe0c77b722b224b16d.zip"],  # 2019-11-05T21:41:17Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "abseil-cpp-e96ae2203b80d5ae2e0b7abe0c77b722b224b16d",
      sha256 = "4f8a7fbbd125ae4c24e95ed638be0bf6ab39ecec8c3a231d0d18cad7eb91364e",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/d5707695cb020ace53dc35f30dd1c3f463daf98e.zip","https://github.com/google/googletest/archive/d5707695cb020ace53dc35f30dd1c3f463daf98e.zip"],  # 2019-11-08T20:47:19Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "googletest-d5707695cb020ace53dc35f30dd1c3f463daf98e",
      sha256 = "b0bf7cf3c120cdfff4ccd90a004b09637448c7b52593136847e527378abdd067",
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
