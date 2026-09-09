class WenlanMcp < Formula
  desc "MCP server for Wenlan — personal agent memory layer"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.5"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.5/wenlan-mcp-darwin-arm64.tar.gz"
  sha256 "4126b31f1362fa7d4f3b927834eef7a8c4958106ed52c60e928806b36568ce8d"
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
