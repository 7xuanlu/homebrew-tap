class Wenlan < Formula
  desc "Wenlan CLI and daemon, the knowledge base your AI tools keep organized"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.7"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.7/wenlan-darwin-arm64.tar.gz"
  sha256 "21518b0b4283c024505c48a319db19bd9b8bbe104773bb933571e17b6c7da161"
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
