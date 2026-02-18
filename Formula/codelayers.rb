class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.9/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "ad62be4ebddf4e2b3110c8e37967114a24672e77fd29d3c6cc16b224c363aaa7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.9/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "c315d633399177264f7165439b6928451fdbfc1589ab50441686b2693ecdc129"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.9/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "627eeb8047c8f2b500b82ad6b64972a8fe26ff40b3e07db303572399a8141492"
  end

  def install
    bin.install "codelayers"
  end
end
