class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.2.0/kmono-macos-amd64.tar.gz"
      sha256 "4c135924b7d64c9496d78de7541ac5530533b8e338b19a8d0179af8b5b500daf"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.2.0/kmono-macos-arm64.tar.gz"
      sha256 "297e8bb9e2fe437945a6b6ab61db5e8e99d7ff9b40f51936e97bb67b9f2cbfeb"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.2.0/kmono-linux-amd64.tar.gz"
      sha256 "943f7dd623e50a276679e6c9490acb90b9653a9bac37c33c86985382dc4f3b18"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.2.0/kmono-linux-arm64.tar.gz"
      sha256 "29d06e9414ce68f0f12efd67e11b6af45c6e5cce7ec3d249be98048cd5386e39"
    end
  end

  def install
    bin.install "kmono"
  end
end
