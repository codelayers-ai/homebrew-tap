class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.0/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "a37a2271944299b41ab26a8f1dd644fdc56fcf9d9c3351bd5d4defa789723862"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.0/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "bb0166d07b8026ca7cbc4a88f3673d6e192897392e7db03ae1dc9433c243dca4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.0/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "38486cafc0037bb03fe89f24148d6f84b1c16f3cd93a9bf48578b30e47f336c8"
  end

  def install
    bin.install "codelayers"
  end
end
