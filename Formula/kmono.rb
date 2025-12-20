class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.10.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.3/kmono-macos-amd64.tar.gz"
      sha256 "3e507b4c268906c0c3de27b276f2dbc90856a56087004d0d4e11db495c288a28"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.3/kmono-macos-arm64.tar.gz"
      sha256 "0e4c74b4b0217c295958bce16b369e6780d8b71f212c71a35d43bfed986faa48"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.3/kmono-linux-amd64.tar.gz"
      sha256 "a89bf3e40e0381948e11ca20c834c41ab2d32b23231a5b20139bfa42b79ebe3c"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.10.3/kmono-linux-arm64.tar.gz"
      sha256 "09f70163f4f507d6c137b29a8b6d563341af15dfa406d3cdbe73d372a0f44e16"
    end
  end

  def install
    bin.install "kmono"
  end
end
