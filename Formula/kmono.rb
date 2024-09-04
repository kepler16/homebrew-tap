class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.0.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.0.0/kmono-macos-amd64.tar.gz"
      sha256 "333c4f8d738a90bda87382351043ebbd41789c26e314edfaeeed6faa28adce75"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.0.0/kmono-macos-arm64.tar.gz"
      sha256 "37e4ae4452fded65110270b5324b927e93b4d524bee33a4a6939de371455f79f"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.0.0/kmono-linux-amd64.tar.gz"
      sha256 "6b1ef6b4f95f65a222e03e07963f2b0faf4aab619d38db0be3c420153ff94533"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.0.0/kmono-linux-arm64.tar.gz"
      sha256 "90fb8498d0a1fbcba8cfb93bbc5e0847e1533e5090983f4288f1eca8a299a48d"
    end
  end

  def install
    bin.install "kmono"
  end
end
