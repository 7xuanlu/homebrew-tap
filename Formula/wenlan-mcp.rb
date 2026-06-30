class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.4"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.4/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "1f6785530ef60da8586cde6a36dc4ed5849ae845bcb538574c77895162909429"
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
