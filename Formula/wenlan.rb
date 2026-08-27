class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.3"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.3/wenlan-darwin-arm64.tar.gz"
  sha256 "ffe31fc8622dc9235e2a1784438a17f5a291aa6ddaf90228857dbf8914828654"
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
