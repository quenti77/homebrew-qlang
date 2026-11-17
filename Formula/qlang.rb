class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.6.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "13021314c515cbb92ea939a6f0fcafb3df3897222a396b5b01ed3bfb0ecf01e2"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.6.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "43d70ef85481ba8e36914de8a890fd6538de82359205d154c81b2ba01f99d4c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.6.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d64ab4ee91826d8c74bf4d8243e924fc3fe258928818be7a8f213371cb9ad689"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.6.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ef7b54d05a52472da7fe30ad36957abdbe89e570ea96be5e6dfb61b404e308bb"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
