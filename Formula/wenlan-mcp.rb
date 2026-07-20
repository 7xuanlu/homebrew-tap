class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.14.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.14.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "b904105b3cba2cc108b4533dc3cd18ed5d8bba0a11c4d816ab35c99fc5b16357"
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
