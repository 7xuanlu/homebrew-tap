class WenlanMcp < Formula
  desc "MCP server for Wenlan â€” personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.16.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.16.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "e1fd4e057e43849a7242baac9369ea7848981e26b3a9e7635990835f75fcdd72"
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
