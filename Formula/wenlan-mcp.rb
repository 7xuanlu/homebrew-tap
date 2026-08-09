class WenlanMcp < Formula
  desc "MCP server for Wenlan â€” personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.7"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.7/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "ee096cac3b49fe244f9a393e74df9050d5ab8b418fee91802d4f6845edcdaef2"
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
