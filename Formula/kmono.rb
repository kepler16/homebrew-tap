class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.7.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.2/kmono-macos-amd64.tar.gz"
      sha256 "b983b5eb67b1d4cc58a10bc9eddb6e6aee6f814bdc242b8ee58c469d75dea30f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.2/kmono-macos-arm64.tar.gz"
      sha256 "42396dd86b9fd4c2c38308d5e597e37aec972ca12dfc4f806536adc0ab51f2bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.2/kmono-linux-amd64.tar.gz"
      sha256 "e719d7b2e4c561356bf29d3b16d1b5ed2487063651863a664d44b8dd4d46b60d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.2/kmono-linux-arm64.tar.gz"
      sha256 "913f8fac5d81a314a5e6a52de5ffb7c7502207eb6defa41e454570ad565326a5"
    end
  end

  def install
    bin.install "kmono"
  end
end
