class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.5.1"
  url "https://github.com/7xuanlu/origin/releases/download/v0.5.1/origin-mcp-darwin-arm64.tar.gz"
  sha256 "28497cc5c1080cedf95e4b0083688ef94401af1be248ecfe1c1e9f4a10024883"
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
