class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.13"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.13/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "6c6c646c39881138e43fd168a012543fce72903ec67dc9bb29ac9324f333c383"
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
