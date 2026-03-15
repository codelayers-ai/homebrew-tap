class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.8.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.0/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "825c96b8bed700cc9842046987d4a9641709bbc84891eeb03410dc86e056f477"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.0/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "84d57d0ec072788d49e3f549ad6d9649d9c0e4b0b2ad5e33c3c5cd8a089b45a9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.0/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "24228a4c026befd441e63df46fcaae45700d229879e17edd80d48eda834f88b6"
  end

  def install
    bin.install "codelayers"
  end
end
