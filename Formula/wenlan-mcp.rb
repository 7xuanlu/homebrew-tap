class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.13.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.13.2/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "c0611a6ca8283845615f56b332762cfbeeaa68635249e768849a4342db602354"
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
