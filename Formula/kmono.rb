class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.12.0/kmono-macos-amd64.tar.gz"
      sha256 "3be2740411d1aac0c19f7548ad28c2750ea4150cf76ccf73c7367267db35ef09"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.12.0/kmono-macos-arm64.tar.gz"
      sha256 "3ccef8e5563f73f24177e0c86baa2a280c6d51c532e860fd08da2b1522d5603b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.12.0/kmono-linux-amd64.tar.gz"
      sha256 "fa5a3e86f759d64162f6a38295771f75ed78232b1a4bd976e2a9fd02abbb1a0a"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.12.0/kmono-linux-arm64.tar.gz"
      sha256 "e854fc5f1dff85decbd8f001cd6a4c176b9301c2bdc99a754506c94ddf8a570d"
    end
  end

  def install
    bin.install "kmono"
  end
end
