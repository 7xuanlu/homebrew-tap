class WenlanMcp < Formula
  desc "MCP server for Wenlan â€” personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.8"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.8/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "c1829d57dfba7af2281e23123de507a8c2ff36d50abe2d88c0421cd8a4244c18"
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
