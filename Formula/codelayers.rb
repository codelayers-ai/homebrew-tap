class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.2/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "0af5a056a6a05f50b046915dea9f84a607e9e749bddf05c14ad9abea554f73a0"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.2/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "78e2ab00a034782073a233b1415a9a826442f16085eb274b5094da7f5668bb82"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.2/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "aed980e34c4831a0bf189cc269c5bacb2f3675c39dbe533a5fb03acf9e42eda6"
  end

  def install
    bin.install "codelayers"
  end
end
