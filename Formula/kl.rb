class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "MIT"
  version "2.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.9.0/kl-macos-amd64.tar.gz"
      sha256 "06062fb5f3362494ea7e86a83b17d911f45a64d2da2d12a04f5af803ac81561a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.9.0/kl-macos-arm64.tar.gz"
      sha256 "c5e5a4948ffc1cf683d7dd866a64ac17178b01b03aba65a8d7b1945924bd3083"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.9.0/kl-macos-amd64.tar.gz"
      sha256 "5477d27b1f3b872064b2fb300c4b10fe73b7fff02e660a9b7c91c02b25ee7c98"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.9.0/kl-linux-arm64.tar.gz"
      sha256 "14d4dde66a97691384e237876cf0fc63ed3e059886eb605ce6d53c6d94e73270"
    end
  end

  def install
    bin.install "kl"
  end
end
