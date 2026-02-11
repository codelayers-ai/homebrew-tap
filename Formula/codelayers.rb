class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.2.0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.0/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "2830a4d58e5bbfd959db572bb86c42454f4b89c4d527d02e2121f820f9827713"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.0/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "72f75ba77ae9a9e3d1ce8dc5f64042f89e8ee94a6a299469a411c23cf57c76ad"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.2.0/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "6e194f75e1878558bbd48745ccb816cf69eace782d772aef57d3bd741475a6f0"
  end

  def install
    bin.install "codelayers"
  end
end
