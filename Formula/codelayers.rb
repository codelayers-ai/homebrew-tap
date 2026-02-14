class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.12"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.12/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "2523356e43046445df683e62a03511b64013a9c2b37a7c9f82c68c48228e1bed"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.12/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "7b328e5f38c841a00febd477d9481b964366ecdca2afd7e8d6ba093729ef3c57"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.12/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "2a0b97d20be191fdd2b4469133dfefee024272d5aa359cf7de27c7d97074686b"
  end

  def install
    bin.install "codelayers"
  end
end
