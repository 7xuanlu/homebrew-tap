class Wenlan < Formula
  desc "Wenlan CLI and daemon — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.18.3"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.18.3/wenlan-darwin-arm64.tar.gz"
  sha256 "830696c3dd9c92dd209c1d8bc17f7caf8a95fd3210f8e3a98f47034a4249571c"
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
