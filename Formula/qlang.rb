class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.0.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "437508110742925b05ebd05bc6253883b6e615fd8c37d95301505a895af3ce4c"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.0.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "22875f31cd70ba5581292e9c759302ed0716915e7ea30140641c3f68ed34a874"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.0.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2fd5b796a9744b3073d8352356c62afca1ad1f39066d3f8463a3f2b6f0da6d2b"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.0.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b3da88e0b1dfc516424769da334385050b10682b043ae61b4ad555425ada5ff"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
