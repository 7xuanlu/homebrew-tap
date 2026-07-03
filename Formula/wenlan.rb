class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.10.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.10.1/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "0aaf01087ba9be6a0c4b4cdb1be791c21b5b0ff09e64addbf7a4deff683b42e8"
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
