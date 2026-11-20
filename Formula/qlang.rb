class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.8.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "edffb392bb520806251920746b595f3a36a4bab63188f9d8e80b861fca19377d"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.8.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "d163e07e78392a65481523a2cd16f76e10fbdee2dfb13d14fe389c6b883d3f72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.8.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e0eaff05cb82ca0e5ef2735bd8c0dd5c14f50f5ad7cb161d54f55c054f7fbe2c"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.8.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d3142d59e026bd6606812461de9c12958d9e93fa6f544d12c92c6530de62a3e"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
