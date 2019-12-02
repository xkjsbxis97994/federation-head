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
      urls = ["https://github.com/abseil/abseil-cpp/archive/0514227d2547793b23e209809276375e41c76617.zip","https://github.com/abseil/abseil-cpp/archive/0514227d2547793b23e209809276375e41c76617.zip"],  # 2019-11-26T17:37:42Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "abseil-cpp-0514227d2547793b23e209809276375e41c76617",
      sha256 = "2eba659382882cb4b484aee49c34ad483673848974e56f45547f5abff18d0dbf",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/b155875f32dc74e293d96c0de2dfcdfa913804e4.zip","https://github.com/google/googletest/archive/b155875f32dc74e293d96c0de2dfcdfa913804e4.zip"],  # 2019-11-27T21:20:38Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "googletest-b155875f32dc74e293d96c0de2dfcdfa913804e4",
      sha256 = "75000d129984e8d631d616133fc39c5c3d4def83c7cebd6e6df6121c9777ce19",
)

# ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",
      urls = ["https://github.com/google/benchmark/archive/318d07113de67343127d0f980da7edfd763ab4a3.zip","https://github.com/google/benchmark/archive/318d07113de67343127d0f980da7edfd763ab4a3.zip"],  # 2019-12-01T10:42:52Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "benchmark-318d07113de67343127d0f980da7edfd763ab4a3",
      sha256 = "20e37d75971371cbb9457a36f5ce364061e730c2c3cdc1b831cebcf42c0e00e6",
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
