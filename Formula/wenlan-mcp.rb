class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.10.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.10.0/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "2a90a3bce4f7005d21e09bc023053e5fc1de6e623c4817f3b2829b6aaadf078a"
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
