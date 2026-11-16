class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.5.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "c01516934a2faf5137a525b9176518114e9ed2c208d84c0830363d238a8027d3"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.5.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "00d0759aa92e6215a1847477879a6128a22be0cfe0058ce1862ce30ea39a82ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.5.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad31deaa06d1de67545e1a768a124dc5737e840d538a832c5a4dab2267ddda0d"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.5.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0eb5414ad8ff1366fde3ee26171870701a2dc583c6f0c0459ecb62a78440d588"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
