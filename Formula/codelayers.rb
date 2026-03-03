class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.6/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "578c794ad069fe7d45034c23be99309905144da1a5314d2ab7e054a150e1c8e6"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.6/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "5fe6fc3871d961f71c9095f251c1ced27db49e9fd9be48ed38e0b7c4cb3bdcc3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.6/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "f9fa77468be7d873f0b9062ffd89099f8d206271ae0850cd93ffcfa2c51849dd"
  end

  def install
    bin.install "codelayers"
  end
end
