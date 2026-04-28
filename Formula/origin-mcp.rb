class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin-mcp"
  url "https://github.com/7xuanlu/origin-mcp/releases/download/v0.2.0/origin-mcp-darwin-arm64.tar.gz"
  version "0.2.0"
  sha256 "e64c3123dca279ea7220031e526e0041585e3c539f278d524e8a578ac68afd9e"
  license "MIT"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_linux do
    on_intel do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v0.2.0/origin-mcp-linux-x64.tar.gz"
      sha256 "cd4afb9ebbedd8eec56fcab6a7ff9da0db66a565a955073111e08caf4116773b"
    end
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
