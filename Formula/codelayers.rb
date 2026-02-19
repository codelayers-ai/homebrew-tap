class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.5.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.3/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "dd57491a2c9a27ca723245289c5274e48a2297bcb5ce1e5b8fcec493fca3f009"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.3/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "685524786bb65db3596a2ff4c4b867d97072de0409cb6f33cc67b44064599da0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.3/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "0b179f04d6f1333026801bf43136db1edd1ebc36fccb7c67ff69f6d96221cea5"
  end

  def install
    bin.install "codelayers"
  end
end
