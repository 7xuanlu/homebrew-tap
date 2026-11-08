class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.1"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.1/wenlan-darwin-arm64.tar.gz"
  sha256 "e05319c449173139f0f8d9292821c74164d090b94346ff8c585941c92357e563"
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
