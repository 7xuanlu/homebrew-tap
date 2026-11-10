class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.4"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.4/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "378371aab3ce447f05a4a1f04982abc55d69e6ee177d284589bd699cd55e67aa"
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
