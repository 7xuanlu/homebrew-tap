class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.5"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.5/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "89bbb96c9b8d5821daf95accba24da507f8c4ea8264834e340c0c9b70af403f3"
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
