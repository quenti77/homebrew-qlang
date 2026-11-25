class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "bf514d0bbb77da914c811c81c06d06178c8bb59c4aea84677309b3d1402c3733"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "a393ef027e8f8a6f155bfe64f7cdfd23df90fe8ecc4de00e287c00955dfe57a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a547cb6b6e6e4412a9e2ca184d552db55e506f8f743dbc98c85e34f5be3533c9"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.12.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0548551151421ab80b61e04a63ab9b92581651911a08ac22ae3ff3df199feb0a"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
