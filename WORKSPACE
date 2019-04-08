workspace(name = "com_google_absl_oss_federation")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# Cut on 2019-04-04.
# WIP EXAMPLE ONLY! Not valid.

# abseil-cpp
http_archive(
  name = "com_google_absl",
  urls = ["https://github.com/abseil/abseil-cpp/archive/93dfcf74cb5fccae3da07897d8613ae6cab958a0.zip"],
  strip_prefix = "abseil-cpp-93dfcf74cb5fccae3da07897d8613ae6cab958a0",
  sha256 = "1ecd34c47663936f2b043c22f3c91079b846286511248aafbb6441f8a162abfe",
)

# Google Test
http_archive(
  name = "com_google_googletest",
  urls = ["https://github.com/google/googletest/archive/1f3b098ef3afb1d186778d47ccecf9d188ef49b2.zip"],  # 2019-03-05
  strip_prefix = "googletest-1f3b098ef3afb1d186778d47ccecf9d188ef49b2",
  sha256 = "a768f27c611c3d1ca8853ffdacbb70098c3aa846b728fa4df5f7003f908a1ade",
)

# Google Benchmark
http_archive(
  name = "com_github_google_benchmark",
  urls = ["https://github.com/google/benchmark/archive/6a5c379cafef3b49314b600bec6a928ebb2f209a.zip"],
  strip_prefix = "benchmark-6a5c379cafef3b49314b600bec6a928ebb2f209a",
  sha256 = "4fe467aa56b3445f3175b24d95dc4fe6ff7efafb159865921c9542ae4f6e84ab",
)
