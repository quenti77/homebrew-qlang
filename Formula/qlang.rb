class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.7.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.4/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "f7deb57ebcb2aa955faf64b9a51a9c4a87714df9831a265ff7d0c685a53374ea"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.4/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "48f4946e0932782a410ec1f0f7fd8a809c64b255ea6a0e8b4c8c1f358ce7c919"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.4/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82822f152edfd0969b93fc7408c4147b6526d962a81cf65effa89bcee4161d96"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.4/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d5646391a4a113c1c57064d59fa79ed10d0447281672cf83a16173265a85bef"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
