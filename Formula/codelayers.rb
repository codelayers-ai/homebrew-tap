class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.0/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "e0fc388230e3a5e3c8dac41a0c3654ca8fb15144bc48b3e418cf8bbb9e50a66d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.0/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "2edaa4e90790bf23f9ce84e5de6658652d8d99d49a0d6b48ea4b9f1a65fc8abe"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.0/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "4e3c5b992c2df56340feaf992fda0a0b230fbc86e7495a3648edcec377abd66c"
  end

  def install
    bin.install "codelayers"
  end
end
