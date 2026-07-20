class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.14.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.14.0/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "e809ef2478d0d0db7f48a0aa1cf592df749909b1f8fef4640a4fd8b60c6fa57b"
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
