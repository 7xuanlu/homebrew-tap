class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.14.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.14.1/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "4448f1d46e5603ad519c8e187d608a19650c3325e2a98c921b55baa41d0c554c"
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
