class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "1.8.2"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.2/codelayers-cli-aarch64-apple-darwin.tar.xz"
    sha256 "b51bd7b430fc67e8cbb57f0ff1fd4bc27a5c5c3ee46899362aa5f0162db2f060"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.2/codelayers-cli-x86_64-unknown-linux-gnu.tar.xz"
    sha256 "5db65ae9d8d00a85e7a08325a8084287fce577dd67a435818d561ad65ecf94e9"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/codelayers-ai/homebrew-tap/releases/download/v1.8.2/codelayers-cli-aarch64-unknown-linux-gnu.tar.xz"
    sha256 "d748374a60476acf89a3d59936626fbdac1d8a1c5b8ae90bdd992e50db18f630"
  end

  def install
    bin.install "codelayers"
  end
end
