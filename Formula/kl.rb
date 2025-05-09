class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "MIT"
  version "2.12.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.12.0/kl-macos-amd64.tar.gz"
      sha256 "aab3425568e25c1630784260d8f1c75de749256498c079ea10122fb69d5c8f37"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.12.0/kl-macos-arm64.tar.gz"
      sha256 "0cb1976e7b1ad49f5b49d350223984f9ed9362ebf8f36ba0461653fbb1db979b"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.12.0/kl-linux-amd64.tar.gz"
      sha256 "b74de28ff81633b88901128351b8f9b6e47bab3a24a5d2a35eb7ee0d4b80ed1e"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.12.0/kl-linux-arm64.tar.gz"
      sha256 "960602a9a4a33af2a246939c93dc98d7ec4563d4a02aa388268b18624ca68531"
    end
  end

  def install
    bin.install "kl"
  end
end
