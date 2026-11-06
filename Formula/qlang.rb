class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.2.1/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "cd56a9e374501930cf76468d03051ebfec1240296d4536c1bb906cadcd2195cb"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.2.1/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "ad377aa9d2654d133847bcaf2dcbc37d0e33d0735750b22cfb1ffce3695ea3fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.2.1/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "780e352d2610b56335a1b13d4fd621f9a2a72973aaf154e4c6a028f67a8f7cab"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.2.1/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13fc8247dc19dd4ed366df9add76b4f82bfb385a0aa6c9e029193b4d68fe3685"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
