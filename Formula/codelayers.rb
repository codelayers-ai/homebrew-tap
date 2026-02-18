class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.5.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.2/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "5085c39e663b8dc25f553d339e3eaf2df8f5f8c73e6af6ae80e792f72b085a73"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.2/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "359643b94088d5384fb35c1de39a7a2ec28468fe617619cd4fdd6cd1c0b7e0fc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.2/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "a2553ab04703020575b9f20fffae432e500afc258f4d00cc3ed7dc730037cdbe"
  end

  def install
    bin.install "codelayers"
  end
end
