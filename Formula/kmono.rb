class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.12.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.12.1/kmono-macos-amd64.tar.gz"
      sha256 "df9e39ce059589bee07b361731f8b900d8c5bcba97d6a66691cc8ace5e378c78"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.12.1/kmono-macos-arm64.tar.gz"
      sha256 "33095cd205062d5f76a09fc06798fcd949f621db98db996d9b07acdb6e5dbf95"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.12.1/kmono-linux-amd64.tar.gz"
      sha256 "2dceefcceb38bd45eac92b3d68025bf7031f1ec4cf699ccd20a6bda6ae00b769"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.12.1/kmono-linux-arm64.tar.gz"
      sha256 "96e87e78b6eca78e401ea1eb7f779a9c6094e06d3d5f57e146e92555de3a5b78"
    end
  end

  def install
    bin.install "kmono"
  end
end
