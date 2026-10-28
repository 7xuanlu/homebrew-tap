class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.3"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.3/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "0ee695c619753ea94adde47385adbdf06e583b86c2491db1fc9f36185ed2112e"
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
