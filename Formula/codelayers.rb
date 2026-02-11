class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.2.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.6/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "91dcd817e02648b0f96594d672d111eae70d16495ba9b3664980229f37be51b2"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.6/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "c5bab493fc13ccb27d5044563e8164206a05c02f0f99fd338a37e74ed872baad"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.6/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "73b5f3a5daa256cd395fb9bbcb351f449a4233bdd8c85782815753359c9222df"
  end

  def install
    bin.install "codelayers"
  end
end
