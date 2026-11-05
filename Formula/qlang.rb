class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.2.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "f37683a8ee87e86dde4c7b608d438aff124af222908147b49ff4efd46588bf34"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.2.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "298e3a62308e809458234bab11b4ec76b3a8d5a3218844a1be1fd70d5f4402d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.2.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ecbb2b0e826008beb7bb4a30dfdd121435b2da428bc8f44bfa06d4409f435218"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.2.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47118b9e92b94a990d6222dcd4f74f1689fabc679219afb582da2a22a9ef8641"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
