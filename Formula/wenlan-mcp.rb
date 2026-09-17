class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.9"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.9/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "fd0fe72e37c35bd96b3c6c10d323c34945505336c51e7399e931cde6dec88e9e"
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
