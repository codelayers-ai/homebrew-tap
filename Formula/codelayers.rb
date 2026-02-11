class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.2.7"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.7/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "923e201304b97646ea5d32754d1f2d44da24fb727bd06155e8c61b157b21a8ba"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.7/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "ae328f1796534c0a0a616fbfb6573c0caf73ab8c0431c7ce92066a1e741fef5d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.7/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "c54b3163835fbc98d10185f52d453aea3fd65b51f28cbdc51790e85999952548"
  end

  def install
    bin.install "codelayers"
  end
end
