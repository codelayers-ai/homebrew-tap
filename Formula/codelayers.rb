class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.20"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.20/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "a67fc35550d80dd0cb5c0a87c49d8dd4079f8a9c1b58a6fa23aa68d49f782143"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.20/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "3639b25c34870cb313d8afb452b27efc67423831b13dead1a843177ca120cf20"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.20/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "95a4fda57629d12fbc1cea454fa4aa7fe959642b3341c9b4968b7dec9d11c24b"
  end

  def install
    bin.install "codelayers"
  end
end
