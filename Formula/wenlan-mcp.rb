class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.3"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.3/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "f8d55e30f699a2fc382bfa240b9ea1818b34f48e5008133bb7ae2ceb5a784ee3"
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
