class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.5.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.4/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "9cd64b732093e3c7efa1eabf098d457a09e1145ccb001de56d87a39219f74786"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.4/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "24a405f64970d5d502f59aa4011ca95c88db251a8708a8a72eee496a97ec502d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.4/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "7d39818aae9bf50346cbc93987829be778c77f989323d9b74ed8caa410615bf1"
  end

  def install
    bin.install "codelayers"
  end
end
