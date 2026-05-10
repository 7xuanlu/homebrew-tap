class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "main"
  url "https://github.com/7xuanlu/origin/releases/download/vmain/origin-mcp-darwin-arm64.tar.gz"
  sha256 "ce3b27f7e7aea451154d71e71c0965713aea12fa25c3af8647bbdc9b8078cbd9"
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
