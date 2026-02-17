class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.7/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "3de5ff0316403dc2ad4063d38299ed5a49d89ea72f9dde5878724b139c9a90cb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.7/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "810d3067859319e6b8641c6d5b7b010ce27709fadf92ef03d7d51ed377e03200"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.7/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "6ecc77853a29d8706f1a718e44e4e476c1c9b9a97cfc9910748693e3ac6021b2"
  end

  def install
    bin.install "codelayers"
  end
end
