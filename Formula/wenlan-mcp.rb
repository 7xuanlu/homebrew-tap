class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.10"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.10/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "d7edb957890d7bfaab4c4a68f8cffe82d0fe9df6666170239cdd2c760a3446b5"
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
