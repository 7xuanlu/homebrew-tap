class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.7.0"
  url "https://github.com/7xuanlu/origin/releases/download/v0.7.0/origin-mcp-darwin-arm64.tar.gz"
  sha256 "0b4fc595a899d98b8796eb311f386489db6fd4189f655396f7868ebb3e72f482"
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
