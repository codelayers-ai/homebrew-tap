class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.6.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.3/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "11217396a12b87252e9088f0ce09cb3f65e43295cdebaad7103933cccc4e1507"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.3/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "6068216bb1ebf96695cdcedaba42d9f232dcf7b497ae05c081ff6a31011a1453"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.6.3/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "a78fa6d7915f6a235227a7ad545735c832471d064a9f106ed88b02eb87ffa389"
  end

  def install
    bin.install "codelayers"
  end
end
