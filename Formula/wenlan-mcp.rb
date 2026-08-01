class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.3"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.3/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "d4eb892e6116bb9024ee7cc717e6cd7cf8af450df34b4a4ec7bad6bd31d06aad"
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
