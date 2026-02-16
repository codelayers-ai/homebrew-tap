class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.21"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.21/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "436c5ee78cdc4b81173ff5be9700f7398f8d7666a314a72b194868bebd843ab9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.21/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "6972f432b60bdb3abf4ef901036ed830bf61de632f5d648a434e8421905a7ad1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.21/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "f3b8fe09d29e2b2e13ba1b1969a44226ab3d55960b52baf8130018a9da4a53c2"
  end

  def install
    bin.install "codelayers"
  end
end
