class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.4"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.4/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "a177a66bbad49f6a929b0f079a7e3f6aa38f9fff4ff06e38f6ecd6468006d4c4"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.4/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "82fe7115d1f8c121f6b4b7780bb99770e5e951230f8b550b69b757fb9bd53b57"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.4/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "d7647adc9997c6e450bbd3ccc2ae101254e3f6ea64010aa506068824cbffb2ee"
  end

  def install
    bin.install "codelayers"
  end
end
