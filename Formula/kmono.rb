class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.10.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.2/kmono-macos-amd64.tar.gz"
      sha256 "b06a1f59ea535d0b906951745dc195fe27bb7cd822b553788d3743dc0522b8d2"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.2/kmono-macos-arm64.tar.gz"
      sha256 "9281e96428a0f6a65e87aa0eb3118a1b19ec68b520547a864fe0a134530e4158"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.2/kmono-linux-amd64.tar.gz"
      sha256 "6015c28605425ec216dd0e49be7bb347698aa8cdb082926940bf4344f5e294bc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.2/kmono-linux-arm64.tar.gz"
      sha256 "174a73a98bffdf76a21782d16f795101ce814e25eb2246725f25e6d1366cf609"
    end
  end

  def install
    bin.install "kmono"
  end
end
