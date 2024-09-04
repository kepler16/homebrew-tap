class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.1.1/kmono-macos-amd64.tar.gz"
      sha256 "62a62531418e556b7c077ad281a39c1f4415dd24b50fc009f2edd5c89b14172f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.1.1/kmono-macos-arm64.tar.gz"
      sha256 "c46b13b6ca835952a32b81a29d7883d39495763364eb23cd4e64a10d6a7b1a9e"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.1.1/kmono-linux-amd64.tar.gz"
      sha256 "909dfbb430ff91bd7159e8f91e38c53f738528aad1edab10e5ddc4d50be42354"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.1.1/kmono-linux-arm64.tar.gz"
      sha256 "999d2bbfc60bd8bbd4ae937445244bdb8e44654a890e09e251980fc33386ed5c"
    end
  end

  def install
    bin.install "kmono"
  end
end
