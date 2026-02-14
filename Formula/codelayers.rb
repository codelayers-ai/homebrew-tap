class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.10"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.10/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "00276a259697a46f0f99a4445e4c45a6a02dd71c67e4484f2c55e68ec29fce8f"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.10/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "482fc87a35cdc71293136a9511cf306d6ff2b56156bf6173ef5f1c503a1b1f73"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.10/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "827819ef0028b6028e01b96af66a80f877d3ff7536b8cfd9007d0eb4574960b6"
  end

  def install
    bin.install "codelayers"
  end
end
