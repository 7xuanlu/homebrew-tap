class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.0/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "18dc5c9304f31fefdf90988c07ad24a52801c618e3a99d8ed2bd23b6097bd757"
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
