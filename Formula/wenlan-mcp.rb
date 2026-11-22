class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.6"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.6/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "3dc3979ae60b46dc7bc4cf74d62ecf64f0e801e2e978975c5e8e1ca1467cd1ec"
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
