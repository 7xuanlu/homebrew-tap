class Wenlan < Formula
  desc "Wenlan CLI â€” local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.7"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.7/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "fef44926978ffafdcda3865219d342581e0c33bc0645e47c709d83158340640c"
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
