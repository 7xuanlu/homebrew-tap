class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin-mcp"
  url "https://github.com/7xuanlu/origin-mcp/releases/download/v0.4.0/origin-mcp-darwin-arm64.tar.gz"
  version "0.4.0"
  sha256 "303c54f48f6330c234aa9ccbf885974fa2c2a244e60301bb9826cfec90c97fcc"
  license "MIT"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  on_linux do
    depends_on arch: :x86_64
    on_intel do
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v0.4.0/origin-mcp-linux-x64.tar.gz"
      sha256 "bcbddb48d25a37a55f304c02e0931189070a2da71e9ac3b94dc25dd336e2a29e"
    end
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
