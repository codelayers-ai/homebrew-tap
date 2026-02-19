class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.5.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.6/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "105471f7b5667d8ad15a4d35cdf52a504f6bdd83d19c5e8e38d120abc7e2adfe"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.6/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "b64681688e3acac93ba291e433226bcb4317b623c123ba9fde7ce57d9508c344"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.5.6/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "61e345f214e38e0f449fcac8a2099dd53f5797f08309e52b4e2bff2128774121"
  end

  def install
    bin.install "codelayers"
  end
end
