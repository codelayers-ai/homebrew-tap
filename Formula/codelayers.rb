class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.11"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.11/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "6bcaffd167a6df9c22a02f83ff0a14b8169256484b8fce14e05e1a08dc74af1b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.11/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "18acb7fb3da30d2ea1720127dffdcdbd9e3a8829e81e49ce9809dacfbd2d2d62"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.11/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "3a5510c6a5c1d591bd072028ce025637b16d6176f85e19cb6efb436c16f3082f"
  end

  def install
    bin.install "codelayers"
  end
end
