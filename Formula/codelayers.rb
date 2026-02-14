class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.17"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.17/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "73543e9e757d57cc2f79527d7b9d1e47483414fb3a849e46f9f4c7af5b1de044"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.17/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "0c9246f494b6df83c7b8af76ac9c1af9696e87df6a280346a01b75272dce949e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.17/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "1924a2e79c3777947c249451a7d4c78030121628cf309c2dfdb2acb5642974d4"
  end

  def install
    bin.install "codelayers"
  end
end
