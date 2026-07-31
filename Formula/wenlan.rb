class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.2/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "82b69f6ef7baca8776a80d1c707bff580bbf94a988db1de6834df19381c20c67"
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
