class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.2/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "b38939352b3e04b9142ef14b0ed9967e14409e8e3339f0eb046e9e3fd06cc1a4"
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
