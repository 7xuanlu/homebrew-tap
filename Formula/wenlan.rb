class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.3"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.3/wenlan-darwin-arm64.tar.gz"
  sha256 "048d7d6a6ea2800d7ca4fded6db5b9db53ddc62d822a13a5c238836a69d16edb"
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
