class WenlanMcp < Formula
  desc "MCP server for Wenlan â€” personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "2cefe1c56efc39f9dc8eec789826ce68af9cbddd9ee56e0ce1d34eb5f003f629"
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
