class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.5.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.1/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "c0d482dca0cf3455bccef23edc4018fcd070dcc9d01bbcc23fc99a0da13f6b33"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.1/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "954be393979e0a1b26cf68b8975d3e063afad2b4cc727edf1f8efc1fcf165359"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.1/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "a91e99f2fd87d4ba1ead4a3817828f6aecee5a6995dfcfd02571ea923011f8dd"
  end

  def install
    bin.install "codelayers"
  end
end
