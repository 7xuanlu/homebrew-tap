class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.3"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.3/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "d0373224f0fc785657ad7ed77848c15787e7a903b277075787f0d1f3c3cf3fce"
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
