class WenlanMcp < Formula
  desc "MCP server for Wenlan, the knowledge base your AI tools keep organized"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.6"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.6/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "a80800114b8ef740f02c5376a8f3bb4b7f729b97d50972677c9fb71322c4fe0e"
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
