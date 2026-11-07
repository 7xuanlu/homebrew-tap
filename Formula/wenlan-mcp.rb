class WenlanMcp < Formula
  desc "MCP server for Wenlan, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.0"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "1c9e711ddb6007c58789b35da62e780b547aeff370240a7f5c178280c9a529ab"
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
