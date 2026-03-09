class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.7.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.2/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "ee778695338e7229c9fc9064b757be4f03aca42ff3433ec9414c588a3a09d15e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.2/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "b1a332e5a848f0e9d5499ca0cf370aa2f08eff38e61fa450ad35b1884c3ce25c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.2/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "a633d7daca8f7a22d89a513c53970d3e7913e2aa7724b85dcc8ca8d8b3bdbcaf"
  end

  def install
    bin.install "codelayers"
  end
end
