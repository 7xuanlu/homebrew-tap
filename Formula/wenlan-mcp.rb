class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.14.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.14.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "f4775ce25e17c03dd28ef6e995ed4a45390c123e1ff31f3a3e76f5b8538c716d"
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
