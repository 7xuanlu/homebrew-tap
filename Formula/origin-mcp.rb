class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin-mcp"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v#{version}/origin-mcp-darwin-arm64.tar.gz"
      sha256 "a866dd05584c6c422048bd31c9cb3fc599ac4a5c569ba3001db0da57ea790911"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v#{version}/origin-mcp-linux-x64.tar.gz"
      sha256 "99d937ccb8173beadbfd96ac8aa6b96dd2d51d692a51766d48f319cf90e81bac"
    end
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
