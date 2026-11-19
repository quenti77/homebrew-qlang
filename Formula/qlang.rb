class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "1.7.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.1/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "07e1438827f22b45882b29afa60f97f54fed9d0c25fbc67d6263c9de30fa7d56"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.1/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "f6f401600cfdffd87f72980e6416f44596748bde45a214ca00b4b90dd0be3e5d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.1/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61dd080463895b17eed77dbcf5bb98ce05761ad0c633aa2e2570e6c970317936"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v1.7.1/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7fa5a85c2271eb4f503ee8cd591f050d498072167fa7bd5343718782f40bc3c5"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
