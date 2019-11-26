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
      urls = ["https://github.com/abseil/abseil-cpp/archive/7f4fe64af80fe3c84db8ea938276c3690573c45e.zip","https://github.com/abseil/abseil-cpp/archive/7f4fe64af80fe3c84db8ea938276c3690573c45e.zip"],  # 2019-11-25T19:57:06Z use the same URL twice to trick bazel into re-trying if connection fails
      strip_prefix = "abseil-cpp-7f4fe64af80fe3c84db8ea938276c3690573c45e",
      sha256 = "74c305be6685b1e316d10b09e01596988512a0555329ad92b2f303265319ba8b",
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
