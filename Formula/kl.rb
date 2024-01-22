class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "GPL-3.0"
  version "2.8.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.8.2/kl-macos-amd64.tar.gz"
      sha256 "166b937e99d82f5c9c70b2abfc5efefe7fdc65f3e663fff0ddc515bc7d7494b5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.8.2/kl-macos-arm64.tar.gz"
      sha256 "ef6403455d6b0f9321c48c0833458ef0640ebb5200a70984f0b74e6cfa8b9328"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.8.2/kl-linux-amd64.tar.gz"
      sha256 "64bf46bd0b1802ad9d6764fbe3a98b8139ac5db7c422280acf2bc8e2eba7dc9a"
    end
  end

  def install
    bin.install "kl"
  end
end
