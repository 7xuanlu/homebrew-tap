class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.3"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.3/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "8cf4bdcec703e3d0cfe88def758efbbeb5229fa96f4b08ff6b51a800b22493c6"
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
