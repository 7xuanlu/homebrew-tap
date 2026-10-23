class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.0"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "15a112a47527a7b712d8a36eb187276cb5d0cf76751237b01d9315003111147b"
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
