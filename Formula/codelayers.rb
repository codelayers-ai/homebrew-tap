class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.5.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.7/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "f93b098951fbbd384f4a40c4dd9336d691935988d4e1cd1798a3cc1976fa1ed3"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.7/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "ffd2afc3b6de76a0d2b7212f46b1224d598c145ed6a89fdcd6797bac299ebb97"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.7/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "3adb2b3d105ec6e19681ee64f6d79e18f37b945a528495977ce39a9bc96968b5"
  end

  def install
    bin.install "codelayers"
  end
end
