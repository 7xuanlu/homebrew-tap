class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.6"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.6/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "c74d4e9e4b9b00e416d341df52867dad260e8b2c5567112089f9d5f81cb07f69"
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
