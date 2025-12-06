class Codelayers < Formula
  desc "Zero-knowledge code visualization CLI for Vision Pro"
  homepage "https://codelayers.ai"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/codelayers-ai/homebrew-codelayers/releases/download/v#{version}/codelayers-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_ARM64"
    end
  end

  depends_on arch: :arm64

  depends_on :macos
  depends_on macos: :ventura

  def install
    bin.install "codelayers"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codelayers --version", 2)
  end
end
