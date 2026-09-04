class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.8"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.8/wenlan-darwin-arm64.tar.gz"
  sha256 "38af1189dac3e61a7802898754b8990fddf364c4bc8d675f28c3b69067de83b1"
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
