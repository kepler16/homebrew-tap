class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.4.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.4.0/kmono-macos-amd64.tar.gz"
      sha256 "b3a836b13af8965ddb1ca7f0012385c9defbc13859b1911cf348169816eac6b4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.4.0/kmono-macos-arm64.tar.gz"
      sha256 "9b7aca86d8618d1fe663d5329fd772d887e84094fb25b68d80138255d56bd37e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.4.0/kmono-linux-amd64.tar.gz"
      sha256 "91daaebca43963707ec56d0a4e395c080b41f94f3584a848448f2c09b784ae88"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.4.0/kmono-linux-arm64.tar.gz"
      sha256 "ff8bda46dd4edf57b67549a4ef99c65ae7b12f0368cb47675e9b59fdc12c888a"
    end
  end

  def install
    bin.install "kmono"
  end
end
