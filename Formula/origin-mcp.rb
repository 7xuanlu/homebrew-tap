class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin-mcp"
  url "https://github.com/7xuanlu/origin-mcp/releases/download/v0.4.1/origin-mcp-darwin-arm64.tar.gz"
  version "0.4.1"
  sha256 "179eaf92077515400f4e7197f6eda4e20a928b7f238afbeeadec888af752cfff"
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
      url "https://github.com/7xuanlu/origin-mcp/releases/download/v0.4.1/origin-mcp-linux-x64.tar.gz"
      sha256 "8ed1be3e9cdbae8357070ee3a2fdd2dae4982301ed18b8caeb1d604eb154fe65"
    end
  end

  def install
    bin.install "origin-mcp"
  end

  test do
    assert_match "origin-mcp", shell_output("#{bin}/origin-mcp --help")
  end
end
