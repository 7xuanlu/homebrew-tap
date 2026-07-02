class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.10.0"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.10.0/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "eb5b35f3c6bf273439ad0de8ef7aeaaa982f5dc7a6d7da4bec5c399eda3b45ef"
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
