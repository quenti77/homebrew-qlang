class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.1/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "aff0fda3b341ecb30d6e101fa2337ce5208ec2b25e94a319dd19ce6c6bb43745"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.1/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "a74e46d651ffad21824e12e86f7390474e20e57475c05541ce52435c1a8a4e4e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.1/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e25cd17ea617e37e1acdfa99e3802a5069148f84c29a9cfd4a95b80b381f19bb"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.3.1/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "518ccfff18441c14acfcb99dfcd75dd10f36d2ff5262f9a9523404982092ac35"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
