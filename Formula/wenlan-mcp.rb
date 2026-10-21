class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.19.3"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.19.3/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "b557c5edbb7c7cca4196d0ba9bff729488feebd3d7ba7a6e7a01feba4e619d00"
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
