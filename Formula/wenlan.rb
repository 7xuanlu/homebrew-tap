class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.10"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.10/wenlan-darwin-arm64.tar.gz"
  sha256 "69f42d873d26abb99ef8b90cce03bb6204dd5a646cfa41a896c82dfbe72a3a9d"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "wenlan", "wenlan-server"
  end

  test do
    assert_match "wenlan", shell_output("#{bin}/wenlan --help")
    assert_match "wenlan-server", shell_output("#{bin}/wenlan-server --help")
  end
end
