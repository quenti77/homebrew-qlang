class Qlang < Formula
  desc "A small, readable, statically typed language with a built-in web server"
  homepage "https://github.com/quenti77/qlang"
  version "0.82.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v0.82.0/qlang-aarch64-apple-darwin.tar.gz"
      sha256 "dff384309eb8f095cb37ca6cf34dd541d2a824ce37c28d55e762e779d2b700f8"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v0.82.0/qlang-x86_64-apple-darwin.tar.gz"
      sha256 "94eec6a788c02adf9143f74c77a021ac054993cdb80e60b9ce857e2c26eef9c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/quenti77/qlang/releases/download/v0.82.0/qlang-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0cba8c0e5bc7145fc46aa60ace50b868decdc7824ddb542c6195216f7f483768"
    end
    on_intel do
      url "https://github.com/quenti77/qlang/releases/download/v0.82.0/qlang-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f758357cc6f0351806f42f491e1a47e21a918c8c5dea751f3edbc0bc84777414"
    end
  end

  def install
    bin.install "qlang"
  end

  test do
    assert_match "qlang #{version}", shell_output("#{bin}/qlang --version")
  end
end
