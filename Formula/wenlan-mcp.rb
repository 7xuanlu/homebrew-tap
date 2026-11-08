class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.1"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "ce833a2188c48758bd2d2c89bf2242c0b648a958d2cfa1a4d51e8323af3cf8c2"
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
