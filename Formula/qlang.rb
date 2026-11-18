class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "bdc0e26c7a9ca61bf72aa40d2e238880b1b041e8ff76918900d4b31be8c60e43"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "93c202cc0707782260f3eb4f4f55045398c13845501eb053d6baaa677f171679"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1bdd351e8a067a5db8367914bc06ee0be311cd22959b76a4488d43fe13f73e56"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86a4e616df6fa72f9ae9b47772b6c5a20814d95ece2010bbe135781db92411fe"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
