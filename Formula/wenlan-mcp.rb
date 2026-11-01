class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.6"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.6/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "168bc04b508ca84c72ac2f5a6b26677c0cd1888ddaa6e98255a7532a2db67e38"
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
