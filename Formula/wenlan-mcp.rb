class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.8"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.8/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "23bdab19749c81ec78c4a661a8f67faa4e3f4c11334988a59fd62be2e63a02e7"
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
