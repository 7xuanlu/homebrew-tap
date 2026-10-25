class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.1"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "bf303cb76a16e38d0df38c8ca16ee2989aca0a4f945d5fe000b14d9218291743"
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
