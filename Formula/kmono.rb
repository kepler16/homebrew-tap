class Kmono < Formula
  desc "Clojure monorepo tool"
  homepage "https://github.com/kepler16/kmono"
  license "MIT"
  version "4.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kepler16/kmono/releases/download/v4.5.0/kmono-macos-amd64.tar.gz"
      sha256 "9fd098d27db63b32ed3f60c4a00986120b8bfe98efd3b8e1f7c659289062a6e6"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kepler16/kmono/releases/download/v4.5.0/kmono-macos-arm64.tar.gz"
      sha256 "fbf1593fd5bbfa8444e146c81783a8217359ede89c99740f5ea9a1185707eefd"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.5.0/kmono-linux-amd64.tar.gz"
      sha256 "4d9a213f6c166f6236ea70eb7ffce01f50b2e2c3de8b3bfc15da8fa4df2e12c5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kepler16/kmono/releases/download/v4.5.0/kmono-linux-arm64.tar.gz"
      sha256 "5e79daba747d2e1eb5375d1d33f23ce05764660097fd495f2980203cbac935f5"
    end
  end

  def install
    bin.install "kmono"
  end
end
