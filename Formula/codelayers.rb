class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.8"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.8/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "aa33dee128209e91f11e5af10de48cd3e9d334147a850aa687de180658650e26"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.8/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "fac7b482e9bf694edb176c09e5d76102c6b1efd7fa7efbe681892afea1b264b4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.8/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "d58d7e81427d8da6015d31e8dac57bcfa0c93d8c8b7347674a2dd08ab9624aca"
  end

  def install
    bin.install "codelayers"
  end
end
