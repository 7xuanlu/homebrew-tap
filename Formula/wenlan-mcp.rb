class WenlanMcp < Formula
  desc "MCP server for Wenlan: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.5"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.5/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "fa40607eb7e6444f07341711c49997ffb9bc5051629b81735208fca6f171a5c0"
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
