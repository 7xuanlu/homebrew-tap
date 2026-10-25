class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.20.1"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.20.1/wenlan-darwin-arm64.tar.gz"
  sha256 "13e0ba636c6a472c7f615c27afdf8f8ce23651e0b34b4d087f5a9bb517fef022"
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
