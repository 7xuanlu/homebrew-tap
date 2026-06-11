class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.8.3"
  url "https://github.com/7xuanlu/origin/releases/download/v0.8.3/origin-mcp-darwin-arm64.tar.gz"
  sha256 "99d9175a43c5185cea6a3700450ab5da32bfb2103d9238f889a59a4c8330a195"
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
