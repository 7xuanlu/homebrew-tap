class WenlanMcp < Formula
  desc "MCP server for Wenlan â€” personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.6"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.6/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "8febc906a529bc749c5a1b7ff2e853c7aa8b239adb1b7a6e6cb8ecddff07507b"
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
