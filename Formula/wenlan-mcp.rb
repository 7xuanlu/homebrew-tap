class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.12.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.12.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "170f3fa3d3bee53c1f526e23870e175515f5025f308b46f723233c6bc26f4b93"
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
