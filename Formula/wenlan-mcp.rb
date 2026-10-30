class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.4"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.4/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "3ac1eff3a1534a5d3a09ac3fbcbc6056776ee6fbe5b0d3f8aa822cb0f88ec18c"
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
