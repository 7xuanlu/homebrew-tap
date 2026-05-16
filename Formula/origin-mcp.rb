class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.6.1"
  url "https://github.com/7xuanlu/origin/releases/download/v0.6.1/origin-mcp-darwin-arm64.tar.gz"
  sha256 "139489260679e0a73ebf6c0bda6561ee9f06afaf5ad79989601ec5dbd6cfb187"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
