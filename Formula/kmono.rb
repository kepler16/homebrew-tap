class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.0/kmono-macos-amd64.tar.gz"
      sha256 "4767822c7dc62a9beb51d3eb66c7c9bdc5e2d119b72063bdcef275defd146b9d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.0/kmono-macos-arm64.tar.gz"
      sha256 "5cce0fc4fac2989bfffd6dabfd633fe859963dad99322f29492013e292b9912f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.0/kmono-linux-amd64.tar.gz"
      sha256 "42505a789a7016405e974a5217e67b0f15144ed7d9f3055f60f28292cf43c6ae"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.0/kmono-linux-arm64.tar.gz"
      sha256 "4200c4570ade1e6732234d7690a8e8f9cdefb9865ee9ae3f5c603d83210902d8"
    end
  end

  def install
    bin.install "kmono"
  end
end
