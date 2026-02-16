class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.1/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "b26570458ee5e81eec36ef11b17a1c874b4fd3d5640909b1d679084dc80ff6f7"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.1/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "6a9778190025dd28a4a5c80d3d2a0700e80d3dc939a6634581c642f481eec3b0"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.1/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "c51f8a3e287b6699b38bc84b0e55a37838cab2974caf6b9a503dd3f426eab367"
  end

  def install
    bin.install "codelayers"
  end
end
