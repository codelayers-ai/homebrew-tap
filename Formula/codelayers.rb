class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.3/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "37e5a3b3f377083592a18d2a644f06c273c5c0370945d2787bf19c98a922f013"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.3/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "ce4e7f1d3ff3ba76d6731d33657c4d336e48d6c354db2b4e739e95387d02cfcd"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.3/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "7ec6617d362251b9297bc744b0664049c02fc5b3dbe27e9639e37c90862a5bea"
  end

  def install
    bin.install "codelayers"
  end
end
