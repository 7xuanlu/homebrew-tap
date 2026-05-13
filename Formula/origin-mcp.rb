class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.5.3"
  url "https://github.com/7xuanlu/origin/releases/download/v0.5.3/origin-mcp-darwin-arm64.tar.gz"
  sha256 "414fe7331d8eb3215e3d2c9c75ba230421dda2afe1a0c132bede74f7fd624683"
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
