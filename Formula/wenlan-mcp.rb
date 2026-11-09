class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.3"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.3/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "1631a9ae19d19eb661a45e11a10372b9e2ff60c24a93e83a27e1f51e032f64fd"
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
