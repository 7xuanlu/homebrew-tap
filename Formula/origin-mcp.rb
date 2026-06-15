class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.8.4"
  url "https://github.com/7xuanlu/origin/releases/download/v0.8.4/origin-mcp-darwin-arm64.tar.gz"
  sha256 "699fc8afa2f0cc40f4c14b78fed7f4805ecfb4cba099c90a835a98ca2b37350e"
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
