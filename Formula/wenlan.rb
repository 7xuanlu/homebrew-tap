class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.19.3"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.19.3/wenlan-darwin-arm64.tar.gz"
  sha256 "e524f78b40367025d61afb85292fcc8d264bb23e8b1e36a0df7fe3830c652576"
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
