class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.7.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.3/kmono-macos-amd64.tar.gz"
      sha256 "1e47b21d49600bc412cbff19f066736cc1b7e8acc0d63f3ef0f346cb56d5b665"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.3/kmono-macos-arm64.tar.gz"
      sha256 "4995a5b21b227a06831aa2d6380277195838436289fe8f048cb30aa3c88a7477"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.3/kmono-linux-amd64.tar.gz"
      sha256 "ab44e59a0ddf8d38d267d93ff3a6d70a202803f0e25ee4003f6d6da74201fb08"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.3/kmono-linux-arm64.tar.gz"
      sha256 "24a3c7f130d2c41b24d406b34bd6ec3485924d7439d26c661ef9e0f04baebca4"
    end
  end

  def install
    bin.install "kmono"
  end
end
