class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.8.0"
  url "https://github.com/7xuanlu/origin/releases/download/v0.8.0/origin-mcp-darwin-arm64.tar.gz"
  sha256 "ba2b3e1cb3ffc114a6ad25468979bd6b8d0847012da4335eb0f48e7b0e5751dd"
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
