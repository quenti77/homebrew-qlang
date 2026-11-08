class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "08266ab0413760c5b40c9c864d72c62cdc7006d8eba898c1c52f640888c0dd28"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "73284a3edab3fb4dcc8869a24e8435a03f8e18c1797ad078bd4990901729679e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3ae2baf5a5ca6582b19d10579ce4a0540ebf9e0502f1e3b6a983c6ebefa994d"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a26014ecd9ae674fbd4505bf2a354d23c6df5580610bc8ec5aef67f276aea771"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
