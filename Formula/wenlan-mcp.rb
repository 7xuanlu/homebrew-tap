class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.2"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.2/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "a24574727f42a672d794445e6a96e5deb71830973d8b255172854be88bb9d5d4"
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
