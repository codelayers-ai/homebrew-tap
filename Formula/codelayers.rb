class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.1.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.1.0/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "0396ede31d89d4b618373633842bf741da777d8fe1880468770df13e0d39d696"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.1.0/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "PLACEHOLDER_LINUX_X86"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.1.0/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "PLACEHOLDER_LINUX_ARM"
  end

  def install
    bin.install "codelayers"
  end
end
