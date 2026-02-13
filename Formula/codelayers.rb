class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.4/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "5c69abc00b45177298233311c6786655046b58ada5ce1aac820b2bd0a51a6e6b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.4/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "1c4d5fd4b68fca09cac1dd7ec57eeebfb17e5167d2206e7a1a897daa3683d1a8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.4/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "fde7cc0c08e5740a32f828fcad12d346374085f3a726e049f59677a59b42a638"
  end

  def install
    bin.install "codelayers"
  end
end
