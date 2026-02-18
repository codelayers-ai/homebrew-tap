class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.8/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "4565d4f7c17b16fbf38f3d925fc035001f80ba040e78432ebd2741fb7e8c9a6a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.8/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "d0ad241a8985523b07753a802b0c6972ab523f57db5d6d659475b907b9f86878"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.8/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "36b8911e4e1a751707d5ca8d797fdcd72500781171b07ac6afa32227490fd642"
  end

  def install
    bin.install "codelayers"
  end
end
