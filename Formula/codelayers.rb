class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.13"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.13/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "ec8fc951d24538a7a2e928f2e1ab5ffa75870fd7dce661986ce563e71b5af12a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.13/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "94ede02e963457a895bc0b7f2c87a51634767807008500844de59d7ed1b7baae"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.13/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "f9d0a1f6159354207e5357c2e98bf402f56214f90afc82d9d8f39a5db4f36716"
  end

  def install
    bin.install "codelayers"
  end
end
