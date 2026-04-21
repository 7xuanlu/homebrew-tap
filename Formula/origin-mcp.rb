class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin-mcp"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v#{version}/origin-mcp-darwin-arm64.tar.gz"
      sha256 "283071534e51f349b31da978c9ce496396e2552252898b1e0db3044e5daec354"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v#{version}/origin-mcp-linux-x64.tar.gz"
      sha256 "16d16f8ddab3a3ba0ddd4bc999a6b6def33c09f49c3414625d9626cb09553067"
    end
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
