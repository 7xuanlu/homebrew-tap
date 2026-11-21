class Wenlan < Formula
  desc "Wenlan CLI and daemon: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.5"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.5/wenlan-darwin-arm64.tar.gz"
  sha256 "9a98c08a29363f776def99335c2761e4e50256d1e96ee6bce85490cca9bf0e88"
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
