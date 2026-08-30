class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.5"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.5/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "a736139d62cf102ad1a3676d6c3a9cca567e81cc5e6d8c4a65271920661c02f1"
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
