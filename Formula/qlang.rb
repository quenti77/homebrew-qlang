class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.11.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "369c9c2400cf9122cfcf651568ed9870d4f1900208a6df19bcc38fe66139543d"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.11.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "4c0247dd036011fecd00c85fe6a86a9997b04405c87676b8bc9f4d43ec8edf9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.11.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a19a069ced787f1070593ef4b7dffa0b8a3f35e4f6244ddd5b98372de265909b"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.11.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a0d25cee65701ec597e5cac4eac895f2e2b361c7d6fc797ecf531047b6c9d492"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
