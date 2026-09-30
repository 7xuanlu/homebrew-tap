class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.14"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.14/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "4542eb9b837579b1296c1475faffa226afbf48a77e0bdef0bcf9df0a5fdb7c2b"
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
