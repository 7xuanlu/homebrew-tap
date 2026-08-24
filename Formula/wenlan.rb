class Wenlan < Formula
  desc "Wenlan CLI â€” local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.17.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.17.0/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "feaaa6c5daf9eb13c10400578f7a1b59d7d3670592c7f19d774c4d96c01f76ad"
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
