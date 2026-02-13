class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.3.5"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.5/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "e975221e9a618871f778732079bde5fdf908e534555d9a16a937d511a380f604"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.5/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "5b8acfdf526e000fcab888ece006fb6c32fc53f7e49f29b519db9fad57fb8fac"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.3.5/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "e38934485b62d09ec0999a36ec475cbfea1cfeba17e240f96c5fe56a2a05e001"
  end

  def install
    bin.install "codelayers"
  end
end
