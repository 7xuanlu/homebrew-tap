class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.0"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "51bf15e1a6f25b5224c00bd35ad43508a1901f8d86d607b71f3ecda27731dd4d"
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
