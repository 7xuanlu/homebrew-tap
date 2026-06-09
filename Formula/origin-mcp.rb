class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.8.1"
  url "https://github.com/7xuanlu/origin/releases/download/v0.8.1/origin-mcp-darwin-arm64.tar.gz"
  sha256 "56a1f3819d89f1135275451574e8de63377d199af8f43cc654672eebe8e85efa"
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
