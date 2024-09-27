class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "MIT"
  version "2.10.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.10.1/kl-macos-amd64.tar.gz"
      sha256 "6f903c49e0b2bab7988e1603fd7d1897a5a7beac5856854be07ad1f01ec18986"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.10.1/kl-macos-arm64.tar.gz"
      sha256 "f4978224d1af2f91660e7cda2b8a2483651c4e24fd72caa667c802298ed7223a"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.10.1/kl-linux-amd64.tar.gz"
      sha256 "9ead37f2f1ae9410b1cf45dda7515cfec454d7878317a8e94f8669e2fe8bde06"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.10.1/kl-linux-arm64.tar.gz"
      sha256 "f688221abd6be2bad4017ab09206c0ca560f71c9df64e05e46d7c0dbcc0c7887"
    end
  end

  def install
    bin.install "kl"
  end
end
