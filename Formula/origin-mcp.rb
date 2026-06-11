class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.8.2"
  url "https://github.com/7xuanlu/origin/releases/download/v0.8.2/origin-mcp-darwin-arm64.tar.gz"
  sha256 "0acbb3bae1594f9cf55308236b3b3b6c9190d44def94bf5b1967e21c3bf81972"
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
