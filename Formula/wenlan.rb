class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living wiki your AI tools write, keep current, and cite"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.7"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.7/wenlan-darwin-arm64.tar.gz"
  sha256 "4c34379ba9f4d8f3c07326b80068fded4733c25ac35ae0d8fb2dce9938157b89"
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
