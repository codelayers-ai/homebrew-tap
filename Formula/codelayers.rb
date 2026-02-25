class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.0/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "2e4927f560a9914c87346e109bbd835a9bdadea562737569f6f8101e16fab567"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.0/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "c3a8998e566da406a2ae02cd0927f97ac68771021524a46921122c88adc6cee3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.0/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "b82b6d5cd933532e6927a421be6629a10f7255c3ef30353da13285d6027bf642"
  end

  def install
    bin.install "codelayers"
  end
end
