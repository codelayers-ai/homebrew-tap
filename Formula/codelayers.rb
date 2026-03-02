class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.5/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "d9929031ebae333aaa1dea90f81d1b275f72446c1ee39f0a1ee19c9c8dd6812a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.5/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "2ca86be02759e6061b98e9d2ca1a94c1a5cbd72410ed03f6d8eb8c8dd4e2600e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.5/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "01154d0070fa4175ca0e794870dc44d23832ce4a861ac27fb5f1ae2eb42ba4fc"
  end

  def install
    bin.install "codelayers"
  end
end
