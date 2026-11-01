class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.6"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.6/wenlan-darwin-arm64.tar.gz"
  sha256 "746b4df6a437e131d1c47d724a86c4f550759ac8285cc797fd2fe65a58a59df7"
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
