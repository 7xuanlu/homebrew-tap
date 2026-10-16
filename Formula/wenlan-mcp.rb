class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.19.1"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.19.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "fa8603cb8cbb1a316bd18e02752b6016470285a9d78baa684938f428bd1dd9e9"
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
