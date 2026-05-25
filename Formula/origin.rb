class Origin < Formula
  desc "Origin CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/origin"
  version "0.7.0"
  url "https://github.com/7xuanlu/origin/releases/download/v0.7.0/origin-darwin-arm64.tar.gz"
  sha256 "9c3c0041854e3c4b3f23138e8c00f4565912046ef7fc8b1e00d99d7d06444100"
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
