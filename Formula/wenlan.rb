class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.16"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.16/wenlan-darwin-arm64.tar.gz"
  sha256 "243488b9df76ae038f47a0bd668e4ec7b885ddfbb818cb1284fcbbb328bc034e"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "wenlan", "wenlan-server"
  end

  test do
    assert_match "wenlan", shell_output("#{bin}/wenlan --help")
    assert_match "wenlan-server", shell_output("#{bin}/wenlan-server --help")
  end
end
