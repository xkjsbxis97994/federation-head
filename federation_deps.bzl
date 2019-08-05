"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
# ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",
      urls = ["https://github.com/abseil/abseil-cpp/archive/14550beb3b7b97195e483fb74b5efb906395c31e.zip"],  # 2019-07-31T20:07:55Z
      strip_prefix = "abseil-cpp-14550beb3b7b97195e483fb74b5efb906395c31e",
      sha256 = "ab24dc0f830e82574c7268693189db387cca6aa3adc02558445641f5492729b5",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/11be5f534cfca1139880dd66727c15f5bd1e0780.zip"],  # 2019-08-05T17:27:00Z
      strip_prefix = "googletest-11be5f534cfca1139880dd66727c15f5bd1e0780",
      sha256 = "6bc3c70cf8be60d120aeb957381eb84c0e018554eacb93b4409c0a3a0eb94a01",
)

# ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",
      urls = ["https://github.com/google/benchmark/archive/140db8a22901f666577b7516febf184e9764f4e2.zip"],  # 2019-07-30T06:03:15Z
      strip_prefix = "benchmark-140db8a22901f666577b7516febf184e9764f4e2",
      sha256 = "a19309f9fc690d7f169778a22cab804bd97ac65990e69127bbde256d474a872d",
)

    # zlib pinned to 1.2.11
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      urls = ["https://zlib.net/zlib-1.2.11.tar.gz"],
    )
