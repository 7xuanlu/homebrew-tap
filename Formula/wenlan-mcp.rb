class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.4"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.4/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "0d9c6c4aea60f9fe4a78b4f847130ba31fb3433992a878accfe0829ab9ea85be"
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
