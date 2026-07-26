class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "b7463aaccead78b7ad327d1bb1a34e34e28c5255069f865c435cd760f7201fdc"
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
