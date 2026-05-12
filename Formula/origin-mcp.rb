class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.5.2"
  url "https://github.com/7xuanlu/origin/releases/download/v0.5.2/origin-mcp-darwin-arm64.tar.gz"
  sha256 "7442b835d7ca0f7825c0ed9c90953e80501ee99811bbe177278a5606a3a29961"
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
