class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.8"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.8/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "85cc90db8cbf277394a035fafd66ca3ed8e399b18fa709d7e9e3fbea64e3eaa7"
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
