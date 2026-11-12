class Wenlan < Formula
  desc "Wenlan CLI and daemon, the knowledge base your AI tools keep organized"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.21.6"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.21.6/wenlan-darwin-arm64.tar.gz"
  sha256 "925f8aa7583324444401e51a438d3826c19ecb665cd049568c3557290f48d7b9"
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
