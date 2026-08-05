class WenlanMcp < Formula
  desc "MCP server for Wenlan â€” personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.5"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.5/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "8831d3c3142e0edd581d9119c38ae87a7f362accb5723b017f8a0342653a66f0"
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
