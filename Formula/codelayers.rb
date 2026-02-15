class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.18"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.18/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "408a1a7bb89359f017073bd8671d50a521059c5596958e3e9bef59327caba41e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.18/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "27793dd5a380afbad395cc928872815b774c32617e7f66573772201203c05b6b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.18/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "85227094665e9d9a352e5b279fabba45941ae54266fa184d65746c2a56e29647"
  end

  def install
    bin.install "codelayers"
  end
end
