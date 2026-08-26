class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.1/wenlan-darwin-arm64.tar.gz"
  sha256 "6c7f7a2e5a3df9086ee84c306b8f371228517b7b4b832b1a6894796e59d91d01"
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
