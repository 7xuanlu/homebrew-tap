class Wenlan < Formula
  desc "Wenlan CLI and daemon: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.3"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.3/wenlan-darwin-arm64.tar.gz"
  sha256 "217a5154eb25e1af129c0c3bef3e22930571df55c12497fbb8db9c4bde146802"
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
