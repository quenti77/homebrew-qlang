class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.4.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "c6cd89a4d59ce72f8c3dd568238db394dc1853aa2aa394dbac4be2e39463a660"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.4.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "715b864b2b64bfc1e0398c6733f617c88de6011a0fb5df6d74117e227d27a9bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.4.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f3b1237d5b473c2e26ea986e58c5b828fd088c9b053736cbb46fa86eee88c00a"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.4.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea5e6c07eeb09a67c5eb86d52334f8e8f6bf5e78271bdbf681ad8a9768238efd"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
