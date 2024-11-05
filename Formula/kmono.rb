class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.7.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.1/kmono-macos-amd64.tar.gz"
      sha256 "a33d3a5fd259d6094fc0e17a7edaab754c113c8b2a832bd6d7c143ac93d8f5cc"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.1/kmono-macos-arm64.tar.gz"
      sha256 "807b49522ccb03816ad68614666d87e3e0fd252dde609ce6b28d449069081527"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.1/kmono-linux-amd64.tar.gz"
      sha256 "6dfe1b145d1613ab6800679b60b01244b8d64f14b97a5f20c4980ee27bd213c5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.7.1/kmono-linux-arm64.tar.gz"
      sha256 "dd940a14dded94fe18f3c43d1a40bf929efe535e53a99b0ce60595a08594395d"
    end
  end

  def install
    bin.install "kmono"
  end
end
