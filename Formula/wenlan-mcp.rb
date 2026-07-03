class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.10.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.10.1/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "c7688b0c6b699e86eb83b9e899e7408deaffe192d6000e64e0496c50aa7e7d01"
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
