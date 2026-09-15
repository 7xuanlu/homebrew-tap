class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.8"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.8/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "d89310ac4103644991682d65734d6dc9e3522a0aee08111ecb59064515c620f1"
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
