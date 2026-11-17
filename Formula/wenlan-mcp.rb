class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.1"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "a85fdd2f7d0cdb45923429a30da73679add2e496ac804b4b098d3f9cdc2a177c"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "wenlan-mcp"
  end

  test do
    assert_match "wenlan-mcp", shell_output("#{bin}/wenlan-mcp --help")
  end
end
