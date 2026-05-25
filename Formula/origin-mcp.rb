class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.7.0"
  url "https://github.com/7xuanlu/origin/releases/download/v0.7.0/origin-mcp-darwin-arm64.tar.gz"
  sha256 "bd5b2c8d91cd05f970be868f4b36514df0bfaf4aab10da099f08b4c7bc5d4cb6"
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
