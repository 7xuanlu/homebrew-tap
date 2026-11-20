class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.4"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.4/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "d77f01475014f7f66d9f526632fc93b9af5d363e184ba94b8dc029c88d7fb5e1"
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
