class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.3/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "8388644fa45c82b2ebc49f68d8fc8bd35687c539d6f6cdd2ba412200e2c4ad04"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.3/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "f13769196287776605eb72cba237e9acb8ddb1bddf2d1fd60bee1ea8e548e311"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.3/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "34de566f78118e8f67bd4f9e6188eaace0b7acd21e43a28f5bd7e938345801d1"
  end

  def install
    bin.install "codelayers"
  end
end
