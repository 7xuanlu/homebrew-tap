class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.12.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.12.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "e0ea3981e2875d1af20b13cffae54e3dcfdec4677c5e949245ff084cea1b99c2"
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
