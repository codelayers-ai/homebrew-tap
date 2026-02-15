class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.19"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.19/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "d0047f87f6f8b37e752a7a146257333b6d75f9ad38b3715b5c1991c1c0766a95"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.19/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "8020d1cfe215644c59bc7677d451079a0c3372f719ea5fb41cbc48c2067d42fa"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.19/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "4163780d2caae9a63ff7763b8125216a4ffd7c9b96a143c9bc0904a5db4eea33"
  end

  def install
    bin.install "codelayers"
  end
end
