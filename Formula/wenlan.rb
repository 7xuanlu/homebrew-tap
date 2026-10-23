class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.0"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.0/wenlan-darwin-arm64.tar.gz"
  sha256 "aee24f5961dc3abf2cd88c7ac2d26790980330e1c1dd036377fda71583703a73"
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
