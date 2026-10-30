class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.4"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.4/wenlan-darwin-arm64.tar.gz"
  sha256 "c5c6019fe9beadbfffac87bfb103874d74be2ea123d36a8ff642276a41992983"
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
