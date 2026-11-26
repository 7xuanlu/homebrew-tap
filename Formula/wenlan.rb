class Wenlan < Formula
  desc "Wenlan CLI and daemon: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.8"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.8/wenlan-darwin-arm64.tar.gz"
  sha256 "5dad35016e08416b19d7a3e561af034360a2d977934d8fe3ce05ff0f9302c741"
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
