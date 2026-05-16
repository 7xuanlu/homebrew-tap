class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.6.0"
  url "https://github.com/7xuanlu/origin/releases/download/v0.6.0/origin-mcp-darwin-arm64.tar.gz"
  sha256 "a85feb14bb0c9160416ffd44e355e1fd5c530d26277fdd60c9c80038703454d9"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
