class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.5.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.5/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "6c41360b68a575f5255201e5d98bccbc32401476b7b7052cbcd2409a3b788713"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.5/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "211f49061ab0168189f4002a91e5dfaaf95ec8c1996cbec049c63e81d9d7a2bf"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.5/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "4b0b487fa3baf261cc75d788a1c452621e3e1415ac480ba54c46ba688dcc2e04"
  end

  def install
    bin.install "codelayers"
  end
end
