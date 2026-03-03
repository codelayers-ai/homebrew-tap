class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.8/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "532d42ddaaaccf80365475ac1f593bee36d545ed1c25bf6c5844b3c97253cf97"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.8/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "df2f6f33c43b86b104baf490416291f9619ac98892a40cc5425c918aecbca36d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.8/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "f3a4f14a952444cc3cb5174f0f323c2b5c8f0465e160f82a2ebf6e7b2bcb593e"
  end

  def install
    bin.install "codelayers"
  end
end
