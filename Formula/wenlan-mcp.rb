class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.2/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "b96d8bad16347113e336daffccf38e2f2fc86d07482b06ee7260e95cebd39983"
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
