class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.5"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.5/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "67fb4381211ba6989c20057a4641a45afbb8d316f4fbc4384a2c9c8439817a9e"
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
