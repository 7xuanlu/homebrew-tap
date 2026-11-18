class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.2"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.2/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "b2979dc572e26460b2ea776a4c5fc960083607b89f47bccd61602a9dc6a43eec"
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
