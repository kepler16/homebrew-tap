class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "GPL-3.0"
  version "2.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.7.0/kl-macos-amd64.tar.gz"
      sha256 "043e8c2f88df193abe526f3d3d6c411d20be0357f2b901a84309dd09f594931d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.7.0/kl-macos-arm64.tar.gz"
      sha256 "739292f7ad784d7128b60e383172955afdc202349ed33691a1e1b5a361849b14"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.7.0/kl-linux-amd64.tar.gz"
      sha256 "8ce5953707d330e0ffe57b8a1802a2ecd0fe06b0354c5679d486fe8b62c9e319"
    end
  end

  def install
    bin.install "kl"
  end
end
