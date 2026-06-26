class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.2/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "9bd904b96744ecb2e4eb8977da68ebb29961fd9462be40e277d20077abb96032"
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
