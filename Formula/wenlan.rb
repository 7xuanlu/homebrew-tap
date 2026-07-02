class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.6"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.6/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "957a6957aaffc13ab06aa97c206a35e1a6259fef57c7fd68e804c74c74953ef3"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "wenlan"
  end

  test do
    assert_match "wenlan", shell_output("#{bin}/wenlan --help")
  end
end
