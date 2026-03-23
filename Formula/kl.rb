class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "MIT"
  version "2.15.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.15.0/kl-macos-amd64.tar.gz"
      sha256 "df7be2969995f956bd2744ee90aa37aec59494f1a53c17bf33fd71bd80a17d25"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.15.0/kl-macos-arm64.tar.gz"
      sha256 "11e069d5bf7ec74da72379dd70d851a3a5d9db1a6659e2043855ecdc81f6f6e9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.15.0/kl-linux-amd64.tar.gz"
      sha256 "347a578242a9c3297e350bfb75520df6ba799f3700e6853b4025d6130099ae53"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.15.0/kl-linux-arm64.tar.gz"
      sha256 "e58d0bfabddd2e0934a06c1040f00012ae66c461d617508b1861f3e42182b2ee"
    end
  end

  def install
    bin.install "kl"
  end
end
