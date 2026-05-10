class OriginMcp < Formula
  desc "MCP server for Origin — personal agent memory layer"
  homepage "https://github.com/7xuanlu/origin"
  version "0.5.0"
  url "https://github.com/7xuanlu/origin/releases/download/v0.5.0/origin-mcp-darwin-arm64.tar.gz"
  sha256 "6b8924e95d5a40f124491125a076f9796dc6d5fab00921974ed5f7d2e9646df0"
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
