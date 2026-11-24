class Wenlan < Formula
  desc "Wenlan CLI and daemon: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.7"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.7/wenlan-darwin-arm64.tar.gz"
  sha256 "fb6ae38c46f52cc72a65fb727529f9848e0d73d2c8544c1a06d7cbcae289d7cf"
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
