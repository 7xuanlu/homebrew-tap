class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "aa66146346fd42ca68891c7e1cced43e1d645954c351fa63a002df9d1d133fda"
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
