class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.13.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.13.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "f9ffb8071b8d71b8555f95266a1003e069e584f1d3114b24abdc8582f52b6ae5"
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
