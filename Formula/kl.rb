class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "MIT"
  version "2.10.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.10.2/kl-macos-amd64.tar.gz"
      sha256 "43662d5429c2e7a8c7a358485e1afec18837bd010d2dfc79034e9328d1e11f71"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.10.2/kl-macos-arm64.tar.gz"
      sha256 "296dcc87bba654d86a74819feb5807e7f08ce0921e175581ac690ea9ec2b4fdf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.10.2/kl-linux-amd64.tar.gz"
      sha256 "fedda1bf169d7331ad15a3406d729e1d7db959e848702ee618433c4956777c63"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.10.2/kl-linux-arm64.tar.gz"
      sha256 "bb7242924b8ed7aaf48babb0e996531e15a61da8d7c8cb57f4acdd127680308c"
    end
  end

  def install
    bin.install "kl"
  end
end
