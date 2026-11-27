class Wenlan < Formula
  desc "Wenlan CLI and daemon: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.9"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.9/wenlan-darwin-arm64.tar.gz"
  sha256 "0344c9d185924196dab26a154388342c3d114ac2508a716e83638e98b27c5fc5"
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
