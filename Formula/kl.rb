class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "GPL-3.0"
  version "2.5.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.5.5/kl-macos-amd64.tar.gz"
      sha256 "6d030e481c982dac299708af960f3389ecdd7cf149e38505f96a7f58078d2ba4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.5.5/kl-macos-arm64.tar.gz"
      sha256 "4f33f072ad3efd2c53fd54462da2ddf4242fdfc702e5f8af1aa0d838a5746238"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.5.5/kl-linux-amd64.tar.gz"
      sha256 "b0943648de47a9ad8c85c19c53941bf3dcb0ae665d4b20ea0656f46f8dbea17d"
    end
  end

  def install
    bin.install "kl"
  end
end
