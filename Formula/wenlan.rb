class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.13.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.13.2/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "733bce702b80145b5855d8f339d4376380a4276c0d046ae7a3253ac8c8b8bc57"
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
