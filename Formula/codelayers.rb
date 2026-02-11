class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.2.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.5/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "511d49742c564437cfc7843a8882e99fb005a22946470c9b7a09b5b95dc9c512"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.5/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "0d47df21aee4404c3408726258f1bd4adc2b00202c881f2de7f153a1afb2b527"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.5/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "123cf96fdcdc07fbb82ed0b04d765ce0f42d446d01093f3e1813b7df5a005979"
  end

  def install
    bin.install "codelayers"
  end
end
