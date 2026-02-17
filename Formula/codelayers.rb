class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.4.6"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.6/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "2265c5a52d8c27d271ee493705795c938f36083f14cd75a5d212d36491c46961"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.6/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "c1202b73335886db34c3473873bdfb6d539dc7f78dbb60cc4049274b1a3ace19"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.4.6/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "db7021814b982cacf0f7bd38f2cad3ad36c861db487296b3dd1cccc06e67e870"
  end

  def install
    bin.install "codelayers"
  end
end
