class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.6"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.6/wenlan-darwin-arm64.tar.gz"
  sha256 "70b2bbc7d78f57e6b1daa81f877056ebc05c9b660a9e1b2f14c508ab896932a9"
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
