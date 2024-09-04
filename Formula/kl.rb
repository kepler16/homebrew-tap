class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "MIT"
  version "2.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.10.0/kl-macos-amd64.tar.gz"
      sha256 "60be5984dcaf0aee53846f0b5695d1e2fc30a1cdbfff30ef3a795e38d0f8117d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.10.0/kl-macos-arm64.tar.gz"
      sha256 "a3c92c3389ce53eca20b5b0ac1ec9b83c4ab2b59e1e6a8aca997910d326f9da7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.10.0/kl-linux-amd64.tar.gz"
      sha256 "82ba4be334bebbae22a6972347e70080ac685d8bd0585064d606bdc88f76516f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.10.0/kl-linux-arm64.tar.gz"
      sha256 "5360ac1538916e4c41031c36170cb498c79f3f408ebc993fbd90408a2a2c2729"
    end
  end

  def install
    bin.install "kl"
  end
end
