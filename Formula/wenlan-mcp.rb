class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.19.0"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.19.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "d272f863bc94fc4adb0a6160d0e5485b4751c44e3d10d87f6795097ac2b658c5"
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
