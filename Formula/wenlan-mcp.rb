class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.9"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.9/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "24c24a80d026a33a82dd52349a60f9cea5f69f62ea477e4e87e69940107c4b8c"
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
