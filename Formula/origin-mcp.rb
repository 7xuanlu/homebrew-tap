class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin-mcp"
  url "https://github.com/7xuanlu/origin-mcp/releases/download/v0.4.0/origin-mcp-darwin-arm64.tar.gz"
  version "0.4.0"
  sha256 "ce55ef0009cc4970d40d4cd1bbfa0e64696a2eb1167e6874fe93766968b69475"
  license "MIT"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    depends_on arch: :x86_64
    on_intel do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v0.4.0/origin-mcp-linux-x64.tar.gz"
      sha256 "424dface812f78049843bd0e960c09c6f671dbd72bf5090896e5b7b1635016ea"
    end
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
