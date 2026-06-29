class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.3"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.3/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "5038efac5fb44a40acd2402c0aca01c78ff484b2ec5912cab991df4419751020"
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
