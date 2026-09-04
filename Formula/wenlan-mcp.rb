class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "fb8a98d9b3cbb1e8b5a28c8373b962934163c65193f8dc30e45a4f068aec3b15"
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
