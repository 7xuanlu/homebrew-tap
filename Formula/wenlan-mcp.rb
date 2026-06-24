class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "21504a381b5e208bd5b946f012897e9ca85fdab3280290568e719c051a642cb0"
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
