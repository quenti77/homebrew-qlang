class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.10.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "47cf4f0e87af2b37b54c32a65b87ac3ad6d7a4f688bdc0cb47ecc5273eab44f5"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.10.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "98549372b8e7a82653e02448e92bde2ed04387f6817a0e1ba604954226b86c28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.10.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "330861d951adda56736d1b3c7684d3be72ae232cbd700dfd16f9d4f1745cef05"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.10.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d02674be531a43d1ed925967ff28971824682eea2850fabeae3b4674f6e15a43"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
