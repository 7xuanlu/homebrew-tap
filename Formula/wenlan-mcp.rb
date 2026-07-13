class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.13.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.13.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "88a226db4dfcb32aa8606aadb4b67efd7c53922a68ec72192ed2bd33d0e50b0e"
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
