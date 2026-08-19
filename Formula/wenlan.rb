class Wenlan < Formula
  desc "Wenlan CLI â€” local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.16.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.16.0/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "5a68d87c1f2973ad2cdcab9d5d95659c9fe81fcc1878bd627f1d44e058636272"
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
