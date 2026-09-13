class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.7"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.7/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "d59a9e9c46a2ec34caee73057b761f41949037ed4138dd0ec859228962ccc4c1"
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
