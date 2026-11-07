class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.0"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.0/wenlan-darwin-arm64.tar.gz"
  sha256 "c538230add2f2d4fc573d9cc03b5dea1e9c3a335978be879f3e5fce1e1ea8174"
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
