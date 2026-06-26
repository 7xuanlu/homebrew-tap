class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.2"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.2/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "fc6a639b919f54a95bb2e0809c6633802299c770d5bb2fef4596729364173ba1"
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
