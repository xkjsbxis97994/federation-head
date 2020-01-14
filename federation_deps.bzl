"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    # ********** rules_cc *****************
    http_archive(
      name = "rules_cc",  # 2020-01-13T16:16:27Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/bazelbuild/rules_cc/archive/771ab665a9a1c68d7fca2321158dddb315b398ca.zip",
           "https://github.com/bazelbuild/rules_cc/archive/771ab665a9a1c68d7fca2321158dddb315b398ca.zip"
      ],
      strip_prefix = "rules_cc-771ab665a9a1c68d7fca2321158dddb315b398ca",
      sha256 = "6c82938234903f2eadb9e43f0fef6b17af84e57374039195aacb737ba1d4bb12",
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
      name = "com_google_googletest",  # 2020-01-09T23:25:32Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/googletest/archive/d854bd6acc47f7f6e168007d58b5f509e4981b36.zip",
           "https://github.com/google/googletest/archive/d854bd6acc47f7f6e168007d58b5f509e4981b36.zip"
      ],
      strip_prefix = "googletest-d854bd6acc47f7f6e168007d58b5f509e4981b36",
      sha256 = "5a3de3cb2141335255a850cc82be488aabefebca7d16abe15381bd93b6c48f9b",
    )

    # ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",  # 2020-01-05T12:32:40Z
      urls = [
           # Use the same URL twice to trick bazel into re-trying if connection fails
           "https://github.com/google/benchmark/archive/5ce2429af7a8481581896afaa480552cc7584808.zip",
           "https://github.com/google/benchmark/archive/5ce2429af7a8481581896afaa480552cc7584808.zip"
      ],
      strip_prefix = "benchmark-5ce2429af7a8481581896afaa480552cc7584808",
      sha256 = "0c457eabeb246789a32f66efe3110af895361f7d71de003d771bc84a7c608b0a",
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
