class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.12.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.1/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "70fe10f6d6482dc9bbe30b30c68e490aedb10242fdb25aefafa2d7d496923d5a"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.1/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "c2015bb69a4e5f0a4be0fdcdb1f3274bdc8d5a56813668623131fa55e1692053"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.1/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a84281f047d53d65889d9b9b8891b22437a4a932eb1719138f297f3789502236"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.1/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c3442b2505a36f3cc8b949994e92d8c8012dca936133b82a3eef4afdac16faa"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
