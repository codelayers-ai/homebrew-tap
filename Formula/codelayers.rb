class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.11"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.11/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "5b2ab5e7909a5064f7efbcc5ca0e493f4376ce0cc781827faf87486b3dc27007"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.11/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "75fc0560c9da39d157f963d3f7e32e04008d6be0500295bc7524a2aa812caaf9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.11/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "b731ff7aabd84a480545d6313a88c48acc158ae12a30151b338beaf5b941003c"
  end

  def install
    bin.install "codelayers"
  end
end
