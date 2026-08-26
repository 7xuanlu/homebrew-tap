class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "8fbedd28af8d6f1518bb8d8cc2565b8ab98892ae80e06496da6c46601a82ea9f"
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
