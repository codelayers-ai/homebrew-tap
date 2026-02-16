class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.2/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "665b9901431fbcec59c190ca73678ffdc0afdf761357fa4f519e886fc5d21247"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.2/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "629eee242fcb74a9f938408078374e8d687cc4739891214f3d7ae92bd1c356a6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.2/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "d3a1af0100452ed14e3b25b97d5667811686c95ac3809bee168edc8fd1181bd9"
  end

  def install
    bin.install "codelayers"
  end
end
