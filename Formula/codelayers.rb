class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.8.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.1/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "4a68ea6f33c33649d1cf278a1a504ca96335c8337a9156893a73050ccdd417e5"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.1/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "c9363279628abb720838163deffebbb79b894b1997bd983d3969d5a0df4bf5f2"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.1/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "9ac2892fd6930debf967f03a6d9158e211ea667f38d01172f55809d5fc70befc"
  end

  def install
    bin.install "codelayers"
  end
end
