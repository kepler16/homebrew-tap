class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "GPLv3"
  version "2.5.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.5.2/kl-macos-amd64.tar.gz"
      sha256 "c4801b80844ca692e274d530b42253e48717ea0b26509d9434683589a4603080"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.5.2/kl-macos-arm64.tar.gz"
      sha256 "e1f8c4e47bc1941d1893cdc66d968b075e52826d546efb18a61f4dc7b00c6e9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.5.2/kl-linux-amd64.tar.gz"
      sha256 "ce44ca3176fa53c185672aa2410118126960c3d971fdd5fc443ec104c0abdb5f"
    end
  end

  def install
    bin.install "bin/kl"
  end
end
