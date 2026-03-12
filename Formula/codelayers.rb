class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.7.3"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.3/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "18d66eca775506a33b4e8631f0c13fdcd08fd31ef42c4f4670e477398fb7f806"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.3/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "aae0fe6c0939b7ddfada0764f2226155fa5558699a99f81afc92f870356095b6"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.7.3/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "f842fe72db1ad06f04b584faad3671070409e1a76c088c7ade7bb630a6f2dd2c"
  end

  def install
    bin.install "codelayers"
  end
end
