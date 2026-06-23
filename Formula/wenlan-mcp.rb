class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.9.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "af384fd383309692ddf330f31c6ee39324d25daab862984a1537e53c0d8f6c6a"
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
