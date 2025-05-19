class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.9.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.9.0/kmono-macos-amd64.tar.gz"
      sha256 "d1658a53145d291dfe14d4272185a1deb135b4204acedde6e204c96bf04af1f4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.9.0/kmono-macos-arm64.tar.gz"
      sha256 "a07a6774a90d073f91328f0e1032e70b3bd0857622aaa75ba598a26a6a73bdf7"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.9.0/kmono-linux-amd64.tar.gz"
      sha256 "b098e13d10711703054fad0f00e5e8083252d581d6964838b08f20b021563b0c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.9.0/kmono-linux-arm64.tar.gz"
      sha256 "4858e668809de624b91182cd2a6209d60ebccbc63aa04365e27e72f6b3498e8e"
    end
  end

  def install
    bin.install "kmono"
  end
end
