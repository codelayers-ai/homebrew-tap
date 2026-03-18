class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.8.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.3/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "f9a8c827984443ca7816423c0b1dec57fe2dc519caea25c6ef448f214e16e35c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.3/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "acc647679474664e7a81a095fc36bfe17600c3a477d2a58ef8979ba608452500"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.3/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "49e3a0322ffc69f9f37ad2f2b585742fb2dedcac57e8f472565d3390cff38407"
  end

  def install
    bin.install "codelayers"
  end
end
