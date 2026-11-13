class WenlanMcp < Formula
  desc "MCP server for Wenlan, the knowledge base your AI tools keep organized"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.7"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.7/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "07f638fd485987d8501d808b78f04cb1280b1b65e52244236e4287d88f7326f4"
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
