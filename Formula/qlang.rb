class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.7.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.3/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "6c05097dbe6bd9c7023741d1696e1b36fb5199499f78459f2bf04fef2cbd658c"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.3/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "8fb279e2c5428f7e24213cf5b275dd7b19a0810244b3b85bd74111350624eb01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.3/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "20bd2d872b0ed786c5ccc5de9c3a127c146070b66ea9034fc8b6d31b3e192323"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.3/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c262e3986352378a2e9c04e799000e8f0496a05ffbacd66faf515398d57c5849"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
