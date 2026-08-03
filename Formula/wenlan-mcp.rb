class WenlanMcp < Formula
  desc "MCP server for Wenlan â€” personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.4"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.4/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "3f4bc2cf35b86c2f3ec006db5ad7fe32663b00c2241fc825d525456d5db80d4d"
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
