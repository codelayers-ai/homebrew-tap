class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.16"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.16/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "64b24892d747d8ba6215ebd292d0c750a96b2d4cbb5ab74efa1765b791cb6b12"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.16/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "f33efa702d02aec276b718114828e76a3d03408a882e9f413d4ca50c2f427e48"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.16/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "fa93d974f5faa256056b42f032c6d32bbf84a4dbe3f91b725fc101a28d2cf90b"
  end

  def install
    bin.install "codelayers"
  end
end
