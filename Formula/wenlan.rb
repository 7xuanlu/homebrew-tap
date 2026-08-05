class Wenlan < Formula
  desc "Wenlan CLI â€” local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.5"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.5/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "bcfc8154185dd1e22375a33911cf0c0bbf310c99032868e7663b54ceff3e047e"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "wenlan"
  end

  test do
    assert_match "wenlan", shell_output("#{bin}/wenlan --help")
  end
end
