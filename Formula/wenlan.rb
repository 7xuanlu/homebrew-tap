class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.12.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.12.1/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "215c2f22de640659c647c70d7ebede7b36bca762c80108a831897c5c8b0c679c"
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
