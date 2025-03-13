class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.7.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.5/kmono-macos-amd64.tar.gz"
      sha256 "b55c1f6819c907ec233b474f77a96a985182c5463750c588d75b834b3f511c05"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.5/kmono-macos-arm64.tar.gz"
      sha256 "dd6ca49abf2deaf51f6cfa994e2946876e0341421cc06be50725bca3a44b1612"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.5/kmono-linux-amd64.tar.gz"
      sha256 "3bdfa6616068f30d6c9ff1b3476990f8e2eb01c1ec83f1d0a829719c1c77410f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.5/kmono-linux-arm64.tar.gz"
      sha256 "8515a9342a2eced80154b0f7fe7970eb7dd0f2b4c2a55aacfe6c5fdfb905fb79"
    end
  end

  def install
    bin.install "kmono"
  end
end
