class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.2/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "ee92031a2cb6c9ca37b7098da768eb49cef589fced9e1490b057676a6bcefdb6"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.2/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "5beed35fa015ad804d66967612c17810e61d9f6d687a73831261d74c88aea7dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.2/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0820f4173da88abada9261dec55a6a5718c8ab72d2b8a021a996a86a8d68df63"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.2/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "370829f1a689229bc9d1ddf6aa424d21cc963f6908082a34bfe4933aca312fab"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
