class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/origin"
  version "0.9.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.0/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "cd9079cca8adffd48e68369df7c9e280d8300b78abff612c3ccd953f7dd7b4b8"
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
