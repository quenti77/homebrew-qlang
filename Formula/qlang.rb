class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.2/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "07a3f220cadc126955004a95ac0c3c17d73d13553812ff76423b5538b175d963"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.2/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "e7c91eca60bfa8e4ee01ac4fafb0035648c1e890f5849a3b61d0e6819664cbba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.2/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a887a78ba6396a67cd1c3d5fb85cc806784fa10b02b9844e496660446b1041c6"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.2/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b7b2f8a7e51a4d28693087c40a362b8b830f899ddc9c42cfc0e509194ce03692"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
