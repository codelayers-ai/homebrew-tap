class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.2/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "704db3314d947970867df45c1f2957b3028bb531249050f52b716917327ca52a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.2/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "b97b52d726c77d50f6dd650ffc4dafda31834ad8488b5f9b32bc0424918ce02f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.2/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "8cdac57c50d9e0a1b699d8e3a6f523d8fc3efa559711c1264d8cb4ad9aa8a7e4"
  end

  def install
    bin.install "codelayers"
  end
end
