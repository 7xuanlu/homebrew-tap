class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.19.1"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.19.1/wenlan-darwin-arm64.tar.gz"
  sha256 "ba7fb31c277e7d57ddca0fabc8600f57e63ac9ecdefa19e0b8233dd53945cdc9"
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
