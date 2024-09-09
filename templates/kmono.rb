class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "{{version}}"

  on_macos do
    if Hardware::CPU.intel?
      url "{{macos-amd64-url}}"
      sha256 "{{macos-amd-sha}}"
    end
    if Hardware::CPU.arm?
      url "{{macos-arm64-url}}"
      sha256 "{{macos-arm-sha}}"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "{{linux-amd64-url}}"
      sha256 "{{linux-amd-sha}}"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "{{linux-arm64-url}}"
      sha256 "{{linux-arm-sha}}"
    end
  end

  def install
    bin.install "kmono"
  end
end
