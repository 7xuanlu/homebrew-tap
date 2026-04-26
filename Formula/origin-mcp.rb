class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin-mcp"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v#{version}/origin-mcp-darwin-arm64.tar.gz"
      sha256 "314da9ea636604037b00b5996ce035c8f4d332ba606e185abb53b75b287ffc6e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v#{version}/origin-mcp-linux-x64.tar.gz"
      sha256 "d0011f57ae6aa1fd5b32670dbc3dfee6f67269b05c5d56252188a7d2e04fbabd"
    end
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
