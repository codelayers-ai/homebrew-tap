class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.9"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.9/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "63834afd8f6710d06a78c39bcd0671dd602acb63a6b4b295b260d98529b60433"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.9/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "6d758037d04b3768353ccb8a372d21865df2219b6f008e65fb3915e48e7dcb23"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.9/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "5daa48dbc3b0b5d186641bb2fe5ee66e7f98db9fbb6e4356f7c08f46d0c54144"
  end

  def install
    bin.install "codelayers"
  end
end
