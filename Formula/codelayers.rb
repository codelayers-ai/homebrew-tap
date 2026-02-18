class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.10/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "c56d9029d316f1c1ab7bd00aebdb05376e70edcde0697284a389b4629bc60333"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.10/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "f943190ae2399a713834bb41fe0edf0389f0945db79f18436991c5c61464ab54"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.10/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "cca2ce2e7d8867f71fe92b531f866e7a71a0f35f8800d6e9e457a398bfb77736"
  end

  def install
    bin.install "codelayers"
  end
end
