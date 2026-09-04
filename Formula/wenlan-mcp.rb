class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.7"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.7/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "ef7b0c693a3e014ac215d88a5727184fbe730ee4fa087df8f29423b762b382c6"
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
