class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.1"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.1/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "5136415e9698b12ee0b1d5873e29f0cc7b66278b6dd00f73affd84b33af4b340"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.1/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "0b0f39b580e1adceb39c772936dee7c224d30083132699b59fcf27803d6c1de3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.1/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "90fc4917fe628459fa31d8bcfa70154e400ff4ce128651565968bf138216cf3c"
  end

  def install
    bin.install "codelayers"
  end
end
