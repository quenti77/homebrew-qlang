class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "0.83.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v0.83.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "f0ee30c1e0f536d064c70a1912b61d9cd8f8ab8d90f6d3d32dad56e67f9dee94"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v0.83.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "53280ec2d0ee458e65c1f91f8303a54d45254ee8ca998435f1255d20d44112b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v0.83.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e031f22114ba040b2db864eeff3f159f4b49c173d537fa1c4ab08b7b47d6dcd8"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v0.83.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "746edde546a5b11154286252b6aa7e2d50113555cf584f691a700db13a1ad618"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
