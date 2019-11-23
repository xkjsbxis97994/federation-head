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
      urls = ["https://github.com/abseil/abseil-cpp/archive/16d9fd58a51c6083234e2e9f8f50e49ed5ed02e4.zip","https://github.com/abseil/abseil-cpp/archive/16d9fd58a51c6083234e2e9f8f50e49ed5ed02e4.zip"],  # 2019-11-22T16:35:22Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "abseil-cpp-16d9fd58a51c6083234e2e9f8f50e49ed5ed02e4",
      sha256 = "054b975ebfa7c5eea4b75930ae4e568579d1351fdf0ead5ecb3506cbffca2b79",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/679bfec6db73c021b0226e386c65ec1baee7a09f.zip","https://github.com/google/googletest/archive/679bfec6db73c021b0226e386c65ec1baee7a09f.zip"],  # 2019-11-22T21:33:37Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "googletest-679bfec6db73c021b0226e386c65ec1baee7a09f",
      sha256 = "bd65a0acd7291f52f19254b3a994f9ad89f44893ecb7872898e5300cc1d94ae2",
)

# ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",
      urls = ["https://github.com/google/benchmark/archive/a8b3693321807b82a3407744d694059f77d1b972.zip","https://github.com/google/benchmark/archive/a8b3693321807b82a3407744d694059f77d1b972.zip"],  # 2019-11-22T22:53:34Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "benchmark-a8b3693321807b82a3407744d694059f77d1b972",
      sha256 = "eaccc61b6c33fb0b119d75defcc76ea683397f342c064284983037726da077ee",
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
