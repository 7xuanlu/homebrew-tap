class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.3"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.3/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "2c253cfcdec92c05693183ce29d02da7d607f08ebde4e1b5eba2feb83a369ffd"
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
