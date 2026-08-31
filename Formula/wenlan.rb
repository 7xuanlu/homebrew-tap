class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.6"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.6/wenlan-darwin-arm64.tar.gz"
  sha256 "6c8fb17e764770509fe43c7728b8a2a4e2b5373b98bfc3e5e9e5690a744e120d"
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
