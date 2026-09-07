class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.2/wenlan-darwin-arm64.tar.gz"
  sha256 "379abb57d8297e25e15ebb0cc3542e64efb3c3bf0ba143021c7e1def3b5dd59a"
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
