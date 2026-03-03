class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.7/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "213036c0bb42734ec8fb6757c92453f493ada0d8e5f35653a6194b9b60170e90"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.7/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "23de0a49117d114b1794fba37034d98605509108093ec6bfbfbf3adbaefb309b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.7/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "62200600cbf65e2f66f016d80122f91e02fefaa206262d5beafcafc992bf8e53"
  end

  def install
    bin.install "codelayers"
  end
end
