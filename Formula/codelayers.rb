class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.7.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.0/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "f5bd5afa102d07c54af55ea9c7bb6ae7b6e18e7b3966e2899db1442b058ce925"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.0/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "0e1167b1c1b878091674e081361d07bb4eefeefabe4a2d6d7a226d95ef399f59"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.0/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "9519f2018d6c58a474e13eee6e22d04912a48ef5b9366a3a2f756066a0fea55a"
  end

  def install
    bin.install "codelayers"
  end
end
