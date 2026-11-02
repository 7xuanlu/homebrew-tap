class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.7"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.7/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "d7438dc5f1e74fe0f98c400c01482cd316eeea77a48ce15ecc4d54cf2919ea2c"
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
