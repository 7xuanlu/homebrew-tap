class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.6"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.6/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "3d40a1c6082d5f5d5bbc5a0d74e90a5e9f0a959548fa095a1f4cdb544de42e6e"
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
