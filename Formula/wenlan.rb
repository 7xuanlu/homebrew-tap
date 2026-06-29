class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.3"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.3/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "a632f33eb378c78726da58eaee8afc5222f84c80ffda3a860d30157d17b23147"
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
