class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.0/kmono-macos-amd64.tar.gz"
      sha256 "d49c84158f59378adbf44907e691fe19ec8d8eb824ceb43c4f977dc45f2161bd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.0/kmono-macos-arm64.tar.gz"
      sha256 "c2e5a11a0cc8b7b57e3c370f3f5cfb153d92ee1f4d30d09cc1ea313b702588e9"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.0/kmono-linux-amd64.tar.gz"
      sha256 "cfb80c7db4eca64db8071aa2289cc01f1957cb145dcac82128fdcbfddc9ae8b7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.0/kmono-linux-arm64.tar.gz"
      sha256 "167d46fb8e585543680b77eb07f47c588f71065a5c05e4c536ada2809738fb62"
    end
  end

  def install
    bin.install "kmono"
  end
end
