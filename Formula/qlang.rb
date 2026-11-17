class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.6.1/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "53c2e7450d473c335ab5d574d998bd3dfedc32b4538b30ce25f55ebc36fff680"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.6.1/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "3225c9a38f0322b7a822a72a47cf6b78c19be8eff67f900523b0b73fd7ca3121"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.6.1/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8280f7e1421279fd03d2ac6e214b0a9ad8f50a842047090b30be789da3bd70d3"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.6.1/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e86fe859829e811cc39bd51c32ac78a94187aa11bddffbde709812848ca75677"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
