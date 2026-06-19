class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.8.5"
  url "https://github.com/7xuanlu/origin/releases/download/v0.8.5/origin-mcp-darwin-arm64.tar.gz"
  sha256 "67c7e1aade6902bac8b0565d56c8c8ed353a91aa9e51a778e3833d3f477abff6"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
