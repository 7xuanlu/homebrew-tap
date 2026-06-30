class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.4"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.4/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "186e27ef91af8e1a8480788c0fdc29cdd8eb99ff2a91b24e405ef2dce543c3bf"
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
