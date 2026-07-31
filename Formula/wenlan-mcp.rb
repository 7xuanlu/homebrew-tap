class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.2/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "08f6624dd646f487ed0aadf3bd27661293c4c83763b7db9c995d6bccadb69590"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "wenlan-mcp"
  end

  test do
    assert_match "wenlan-mcp", shell_output("#{bin}/wenlan-mcp --help")
  end
end
