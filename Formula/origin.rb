class Origin < Formula
  desc "Origin CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/origin"
  version "0.7.0"
  url "https://github.com/7xuanlu/origin/releases/download/v0.7.0/origin-darwin-arm64.tar.gz"
  sha256 "ca1f0723b56d69818cee127ee48f8b721105714f137b41fe96b132058feb0bd5"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "origin"
  end

  test do
    assert_match "origin", shell_output("#{bin}/origin --help")
  end
end
