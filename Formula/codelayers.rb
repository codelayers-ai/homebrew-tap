class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.4/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "c56e45daf246d213549478ddd2936cf03d2d4e5656e4951e4c86b1b2613abf28"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.4/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "41b9f40de2ad8e638f76fb069f89dd9a8e1ea467e006d23a85b963d103b27a1d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.4/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "337a4e918fe668daa3904a90ea77c9d0552fe7240d5cbc1442cc64292c7b9991"
  end

  def install
    bin.install "codelayers"
  end
end
