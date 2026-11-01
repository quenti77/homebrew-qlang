class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "0.84.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v0.84.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "75d4e395524368aa0fa6eaca6bd0ba1fc412b8005cfb8cb2c90e94dc2c33b949"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v0.84.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "69b2d83ca2245e6d34c98a2975954d514ef71a32bef203e05a5f73d1ec08ff47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v0.84.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c25a3188b5343aaf43e404ba8bedc7aaf946a4934639b12cafb969caca7ed1f2"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v0.84.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cbec07c20bd6397db4a482cddd0918fd332582a86524eedf193261cc5c9262b0"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
