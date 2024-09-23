class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.6.0/kmono-macos-amd64.tar.gz"
      sha256 "7c15e5f375e39633fc348c292391c6a8f1c96bf54794a6f2731d1af5171e4e70"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.6.0/kmono-macos-arm64.tar.gz"
      sha256 "6c1f6c1f6dbde224eb355f9be2dd09ca4ca511903a06c707a364aaa62ae943e6"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.6.0/kmono-linux-amd64.tar.gz"
      sha256 "5da3ce4ba8bf21cfca8473d3158a97d28b1fa57009e377ec58ec710076a829ec"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.6.0/kmono-linux-arm64.tar.gz"
      sha256 "393422bd7c0f01ecb4c2583c9ec26fd156fcf78628fe81b08d00c761388ac1e5"
    end
  end

  def install
    bin.install "kmono"
  end
end
