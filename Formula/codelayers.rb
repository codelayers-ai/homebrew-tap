class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.5/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "51126ff38c0b8aef237acca0952c01d9b733598bd5e08b038966d5fc607a0931"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.5/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "badeaff6bc4822cdd74a830bacd07f77b9635e51ffb3f63e2582b950ae1f3edb"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.5/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "f91ad7cb1436963a8deb933eb47a39bef30797422fa4f5183f67d0b0340a8edf"
  end

  def install
    bin.install "codelayers"
  end
end
