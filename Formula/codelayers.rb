class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.7/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "00d08660247b4cd464f1a3932a4fc06bf82a48966fea54aafa7ac823b11789dc"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.7/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "7d4cfa7299f59aea41d948e0fdfa884097d4bca091ba493644538a99b68771c3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.7/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "556f85e45823bfdfa5a3c2bfa037f44291fb4655d1b34535f5dac9645253389d"
  end

  def install
    bin.install "codelayers"
  end
end
