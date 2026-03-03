class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.9/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "9bffc241c96cc5c1234f092a35c41c13d0fd393eea871d5e25e799aaf0242a82"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.9/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "e18dac8f697de8613e2d4af850fe8f3862f03fcfbbda5572288e530803197020"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.9/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "cb48337091f4cb5b96510e06c89bcdfaef3a7ef72380a8a04c89f5f6a662e727"
  end

  def install
    bin.install "codelayers"
  end
end
