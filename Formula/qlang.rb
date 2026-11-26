class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.12.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.2/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "fb4677cc1cae3f2211f6bfb646b9857024413f1699dad6306610778c9c18d5fd"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.2/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "a618c21d23c35e57d372d9277ee917ada256b7b04154792c37da2fa7cc466bfc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.2/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3f9a6bbba570c08f791da823b68d62da6a8c7e1b57f1c555e25c014b060c62ee"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.2/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b5683f9da4ae8369ecf7cf60a054de0a1a5fa56998d2afb02d977f9b55ce27d"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
