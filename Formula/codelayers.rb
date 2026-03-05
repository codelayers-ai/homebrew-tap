class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.10/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "dc8f01d89438fad370cd7fb968a15b1632ee26044633873bde0b9f96f5d3dcfd"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.10/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "de00b04015b888646fa15121854f7332d2b320cdcf3858c2688aa4ca500effd6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.10/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "aab3d9596c100e10684e56dc57980fd2a21c7fa86b31de7e2bb7253ca1777f89"
  end

  def install
    bin.install "codelayers"
  end
end
