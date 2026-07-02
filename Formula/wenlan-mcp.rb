class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.6"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.6/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "6e3d454ca39b03a2292bc8f22f1f0e4440711a3d73c8d18d08b8da748a3acbe6"
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
