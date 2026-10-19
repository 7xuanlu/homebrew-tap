class Wenlan < Formula
  desc "Wenlan CLI and daemon, a living knowledge base your agents build as they work"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.19.2"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.19.2/wenlan-darwin-arm64.tar.gz"
  sha256 "8113c39d99c8c91cff37cb72581a39298bfd7b40269a6e83442355e11be4fa18"
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
