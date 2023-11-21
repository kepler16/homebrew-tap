class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "GPL-3.0"
  version "2.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.7.2/kl-macos-amd64.tar.gz"
      sha256 "5b88c7a4d91a94af84f82596671172b55331d258a7c9b57ec91c269b8b3ad040"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.7.2/kl-macos-arm64.tar.gz"
      sha256 "db40f51e31e1c181a3f3362309d6e433f444f175ab808500317c400fff3b7d3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.7.2/kl-linux-amd64.tar.gz"
      sha256 "a0b37681206d70eed8a8537c95b1e2c41e20b97ea2371cede04a19d156932b84"
    end
  end

  def install
    bin.install "kl"
  end
end
