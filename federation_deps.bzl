"""Expose federation components as .bzl file to be loaded """

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def federation_deps():
    http_archive(
        name = "rules_cc",
        strip_prefix = "rules_cc-master",
        urls = ["https://github.com/bazelbuild/rules_cc/archive/master.zip"],
    )

    http_archive(
        name = "rules_python",
        strip_prefix = "rules_python-master",
        urls = ["https://github.com/bazelbuild/rules_python/archive/master.zip"],
    )

# ********** com_google_absl *****************
    http_archive(
      name = "com_google_absl",
      urls = ["https://github.com/abseil/abseil-cpp/archive/5374c56e5196320681993869e3126b51edac2a43.zip"],  # 2019-09-11T14:20:28Z
      strip_prefix = "abseil-cpp-5374c56e5196320681993869e3126b51edac2a43",
      sha256 = "50c408c1f6f1704dc4a3c89991c7350e524177f66915c9b5cd216d5db4244819",
)

# ********** com_google_googletest *****************
    http_archive(
      name = "com_google_googletest",
      urls = ["https://github.com/google/googletest/archive/33a0d4f6d76a0ed6061e612848532cba82d42870.zip"],  # 2019-09-10T14:54:21Z
      strip_prefix = "googletest-33a0d4f6d76a0ed6061e612848532cba82d42870",
      sha256 = "c4d7c2ea657b007ab68720f2b9e2ce45940a7d1365d599492f029f016c2f6ef2",
)

# ********** com_github_google_benchmark *****************
    http_archive(
      name = "com_github_google_benchmark",
      urls = ["https://github.com/google/benchmark/archive/7ee72863fdb1ccb2af5a011250b56af3f49b7511.zip"],  # 2019-08-21T21:12:03Z
      strip_prefix = "benchmark-7ee72863fdb1ccb2af5a011250b56af3f49b7511",
      sha256 = "85bf03b34280462cff7afb410357b8e97e1a65154dd4e0ee19fa600aa38cf2c0",
)

    # zlib pinned to 1.2.11
    http_archive(
      name = "net_zlib",
      build_file = "@com_google_absl_oss_federation//:zlib.BUILD",
      sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
      strip_prefix = "zlib-1.2.11",
      urls = ["https://zlib.net/zlib-1.2.11.tar.gz"],
    )
