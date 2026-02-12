class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.1/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "dc71730b1822475eb123c9c51457a4e80f89827f41ed3c4296ff154a84714d8f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.1/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "22dd5bd3b1539208153d9d3e1768140a8b209fe02cfb2dddc493d15bb511aa90"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.1/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "f2a4bf8d3d707e4f8f4b244d2bfdc5d92cea0cd2d45ba7657d68eebff9934b41"
  end

  def install
    bin.install "codelayers"
  end
end
