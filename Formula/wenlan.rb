class Wenlan < Formula
  desc "Wenlan CLI and daemon, the knowledge base your AI tools keep organized"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.5"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.5/wenlan-darwin-arm64.tar.gz"
  sha256 "b2da8d60d909c0f0fe81982853d90f8928bbaf68a31f46f6fa18f84232e93f79"
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
