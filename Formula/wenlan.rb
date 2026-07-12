class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.13.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.13.0/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "24a8770049b4f7fa0cafbb855b62e453ccd1bbb4bba6ec3e7b0bc0b8cc8a1f47"
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
