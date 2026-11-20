class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.9.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "454c479cfc99ba601f6e3006b2590011188daf773120fede71909678ffd037fb"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.9.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "a543d22be54f50d95f50bc4c6caa3db2acd37294f4a3778a0fe0c94e033f3387"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.9.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "52898809957f407e0199619719e5f1d0c54580e0c6f5406fa935bc917beb991f"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.9.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "00412ee10b33a0f48e4e62dbb6a32ae757539f57c95b2e637408d065e61e74d4"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
