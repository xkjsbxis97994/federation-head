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
      urls = ["https://github.com/google/googletest/archive/34e92be31cf457ad4054b7908ee5e0e214dbcddc.zip","https://github.com/google/googletest/archive/34e92be31cf457ad4054b7908ee5e0e214dbcddc.zip"],  # 2019-11-26T20:47:46Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "googletest-34e92be31cf457ad4054b7908ee5e0e214dbcddc",
      sha256 = "32b379d8e704e374f687f90ea8be610f83578c1ba7d55e3f2a5be11fe991ec2e",
)

# ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",
      urls = ["https://github.com/google/benchmark/archive/49aa79b635239edc7dc5e3041d41405f850784a8.zip","https://github.com/google/benchmark/archive/49aa79b635239edc7dc5e3041d41405f850784a8.zip"],  # 2019-11-25T13:05:13Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "benchmark-49aa79b635239edc7dc5e3041d41405f850784a8",
      sha256 = "65ac898e0636b186f6f5ed2047018604572fca7d7283231436921fe693c39e1e",
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
