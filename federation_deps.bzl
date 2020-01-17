"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-01-14T17:16:25Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/0489ba308b2e1fe458dea5a3e6efebd25087a339.zip",
           "https://github.com/bazelbuild/rules_cc/archive/0489ba308b2e1fe458dea5a3e6efebd25087a339.zip"
      ],
      strip_prefix = "rules_cc-0489ba308b2e1fe458dea5a3e6efebd25087a339",
      sha256 = "e5ba63c81e02bc954aad4776a5a548460ceb6712b05d6982c33c782c5ff2c7e2",
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
      name = "com_google_absl",  # 2020-01-13T19:12:06Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/abseil/abseil-cpp/archive/a2e6adecc294dc4cd98cc285a9134ce58e0f2ad0.zip",
           "https://github.com/abseil/abseil-cpp/archive/a2e6adecc294dc4cd98cc285a9134ce58e0f2ad0.zip"
      ],
      strip_prefix = "abseil-cpp-a2e6adecc294dc4cd98cc285a9134ce58e0f2ad0",
      sha256 = "a5a667e6899aa6767cd9bb24ca5afe6e51ba719862a810f30ad39bb256cfe17f",
    )

    # ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",  # 2020-01-16T18:56:21Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/8b4817e3df3746a20502a84580f661ac448821be.zip",
           "https://github.com/google/googletest/archive/8b4817e3df3746a20502a84580f661ac448821be.zip"
      ],
      strip_prefix = "googletest-8b4817e3df3746a20502a84580f661ac448821be",
      sha256 = "929670c8f1d59b22c8b7ecad5b34bef8d81fb27f29fe2804546b25f0b4b378c1",
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
