class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.19.2"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.19.2/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "77127cab170a252b85a3f8e08d5fbadc0fb42c0bd5adcb46306f78c63b9c758d"
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
