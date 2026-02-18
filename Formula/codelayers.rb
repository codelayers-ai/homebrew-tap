class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.11"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.11/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "94ca3a553bc383b27c8436fe03c47c20a6aabff5d4579bf24c340fc1fe5c3fb4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.11/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "115c3441bd94de133a87a0141d256719cdb02f23ecd9a33163101aa835cd7b6e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.11/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "f85f48a8f59c6a0ed061b7fdb69eceefd0ead91fba0deb027ee795bd060a0f60"
  end

  def install
    bin.install "codelayers"
  end
end
