class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.15"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.15/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "c4b65360208dced28d7177c679bae23557024cdf65e4cae324a72a87c7079d1b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.15/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "7bd6ee0c5c70aea56d77af6d76dc6abc4fc389cf1cc0719b10dfa8ad7dc8599e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.15/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "8716a41bbb5bb269f932b0cd55bf2cd70870a95240460435490347b293fbf051"
  end

  def install
    bin.install "codelayers"
  end
end
