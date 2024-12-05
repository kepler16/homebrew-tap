class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.7.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.4/kmono-macos-amd64.tar.gz"
      sha256 "d0f0da83ec2197e926523383a6f3119d49809ec05b3323cd0f0192378ff4ad45"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.4/kmono-macos-arm64.tar.gz"
      sha256 "5b9f0ddc388f44093e9fe7453caa2f31567c847eee09336862e8d1c3d0a1960d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.4/kmono-linux-amd64.tar.gz"
      sha256 "c599e25b6def160964526f81df8a6caeb8d110c9517273c89e90126c5eb125b8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.4/kmono-linux-arm64.tar.gz"
      sha256 "861145a126583de6abe3343d54bd3110214177bd5653e18c5c5b6b9bdc1a9fcf"
    end
  end

  def install
    bin.install "kmono"
  end
end
