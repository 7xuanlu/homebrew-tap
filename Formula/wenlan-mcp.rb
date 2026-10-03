class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.15"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.15/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "37ea700b91c47f566b69fb678d80d8e98e17a6be268fe8892525edc967d202a3"
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
