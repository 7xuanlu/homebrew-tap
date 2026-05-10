class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.5.0"
  url "https://github.com/7xuanlu/origin/releases/download/v0.5.0/origin-mcp-darwin-arm64.tar.gz"
  sha256 "8f72ef207ef876e6aae84fdda08778d93319189064f40ef6d533c979e78d1ec3"
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
