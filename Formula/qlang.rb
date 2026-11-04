class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.1.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "1901ccb156b95b1361216efa4eb99a57906560ac7be6da69b1de42f252e638e3"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.1.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "fbec26660514ebb10022566d10ea2ae2dd78825b2a1cedcdcedb2962977ee19e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.1.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "feaf32126c291769cd317ae7d1da40b33acb156cebfc64653754a6149b7f711c"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.1.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c2a21f4755c27168a09d9895cf8739af551a8f5a5641a2a02bb1bde5b7b13e1"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
