class Wenlan < Formula
  desc "Wenlan CLI â€” local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.4"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.4/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "e045d0d0e8d75c0a8abbdceea667c043cadd0b79fe9d5908c55d1c8cffbbe616"
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
