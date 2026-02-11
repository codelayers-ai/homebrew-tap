class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.2.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.3/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "f441b19cda43c997a23439071b6e6d573a0aa05f5680a7a7b8d8e1edd37b2b8a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.3/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "6ceafb94a44a84e7fea0e52357ccdf4c42a8150f503723bf823585dd993a9df9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.3/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "9ab7140c45a3be9e63b2152ef1dd35300804affb6d076c2a72b1fda80213f090"
  end

  def install
    bin.install "codelayers"
  end
end
