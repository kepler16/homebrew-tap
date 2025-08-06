class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.10.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.1/kmono-macos-amd64.tar.gz"
      sha256 "7f9474ed8189b789103895a73094562adeed4f64a73729cbb94c8297f4b6b8b6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.1/kmono-macos-arm64.tar.gz"
      sha256 "a1227fc38453037445babd4d2014f9dc00b23e450f42fa71248ebdb121c918d4"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.1/kmono-linux-amd64.tar.gz"
      sha256 "b7a857757f88916fe9af978c095f1262ebf9ad3cf0bba33685f366f2b5b163e8"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.1/kmono-linux-arm64.tar.gz"
      sha256 "3acde29c64217229e22a3752f5181323eb07c11b99d4d16f261f82c4d9e4fadd"
    end
  end

  def install
    bin.install "kmono"
  end
end
