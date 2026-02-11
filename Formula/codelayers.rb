class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.2.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.2/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "6e32030a0369abfc62ce98d87b528bf3ca112392e0b55f9c7fd79f276cf434cb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.2/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "22fd398192c2edd26905e59ca256c996f59eff4973bc32291f84c8b40a866930"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.2/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "b7c890a9992c185f1cfe766f683abafc3b6a74cb40049c7b6015e33ae60ea7b2"
  end

  def install
    bin.install "codelayers"
  end
end
