class Kl < Formula
  desc "Container orchestration and networking for micro-service development"
  homepage "https://github.com/kepler16/kl"
  license "MIT"
  version "2.14.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kl/releases/download/v2.14.0/kl-macos-amd64.tar.gz"
      sha256 "a4d620f31e2d77ac8576b27e722f7aa48cd60f2834e422b4eb53737c114a843d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kl/releases/download/v2.14.0/kl-macos-arm64.tar.gz"
      sha256 "894145ba6c8a7a263ca8f086aca20a1a1aede1231fb47684fbee46796a30181f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.14.0/kl-linux-amd64.tar.gz"
      sha256 "c80789476df1b85983fea4001cdb6c296dbb2838acb9566bb473f7f7f51744bc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kl/releases/download/v2.14.0/kl-linux-arm64.tar.gz"
      sha256 "305e42272c2fb4ac66ff55d269f3274bb94f982f4dc8cca81c5b24b1c6a46d69"
    end
  end

  def install
    bin.install "kl"
  end
end
