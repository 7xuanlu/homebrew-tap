class WenlanMcp < Formula
  desc "MCP server for Wenlan, the knowledge base your AI tools keep organized"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.5"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.5/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "5f5e4f5cf048feba0fd28a2b5eaa2da84f26f0301108733849fc8da4e0477cc0"
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
