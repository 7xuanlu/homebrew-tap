class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.8.6"
  url "https://github.com/7xuanlu/origin/releases/download/v0.8.6/origin-mcp-darwin-arm64.tar.gz"
  sha256 "0b9a6c33a751ddaaaed3e9f02cf384b34c04141a7ad867e4a4dd8a9f9675feeb"
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
