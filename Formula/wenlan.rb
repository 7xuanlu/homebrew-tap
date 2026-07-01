class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.5"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.5/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "f078a6d99e7de1b70798f243ca836ba1a67970548b606116cd45d5104f5a16dd"
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
