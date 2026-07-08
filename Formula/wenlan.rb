class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.12.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.12.0/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "a064b401b2cef8173230240b70aeabbfb6a8b3944513712ec5d731e086045754"
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
