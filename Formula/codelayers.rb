class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.2.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.4/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "cd88be2f505de53026e2a8a34b75793aa8c79518fd073377cfb644988b990f7c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.4/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "4d75db61c5c274827dde8bd3cd64933900057f8940a601b33e859cffef2db6f4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.4/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "4631134853ce121604959e5e115949036749490b1a6e1d9ff5ab6ed32aa12a9e"
  end

  def install
    bin.install "codelayers"
  end
end
