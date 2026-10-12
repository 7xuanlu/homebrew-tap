class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.19.0"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.19.0/wenlan-darwin-arm64.tar.gz"
  sha256 "4d4fe9c3599c46080c2616e780c1cc21f4a4c64081546c152bbc9cfd8b7ec26d"
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
