class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "MIT"
  version "2.11.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.11.0/kl-macos-amd64.tar.gz"
      sha256 "536909e9b7177f90abafb4ff7fc4ccfebf8a4e06c5674dd50b63bdcdc3e49774"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.11.0/kl-macos-arm64.tar.gz"
      sha256 "6eec3fe18027cd6f986b5da90febd3d83a23b9a98218df832cca9b05613a0590"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.11.0/kl-linux-amd64.tar.gz"
      sha256 "cda74bc3c1ca63e1181f5120ccfb1759d1827fd2d28d3d67de1807583cb964ec"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.11.0/kl-linux-arm64.tar.gz"
      sha256 "3aeb22f000ae4622573636bf5e8d5f743d3f9eedfdd03012cedc4e7ed4a919db"
    end
  end

  def install
    bin.install "kl"
  end
end
