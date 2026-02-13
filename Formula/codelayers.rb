class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.6/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "cdb1f2f06cb0f9c4c47a80fb768f33d804d7a35c1ab027e27f9aa343dd3c7c02"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.6/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "5a8e8be6bb994b0d0f6b4c228fc7ef2896fad4804aae9a13477f0c80bf95ab88"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.6/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "4e5c8ef9bc5f8572e5f5b452ff22835de9ba2b233f5e9740a70eb1824b8e2b91"
  end

  def install
    bin.install "codelayers"
  end
end
