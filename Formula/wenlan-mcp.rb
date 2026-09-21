class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.11"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.11/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "9044a278d9111e70239d88eec0f1fc621e189d65a4613dab0ecba91e340e2a1f"
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
