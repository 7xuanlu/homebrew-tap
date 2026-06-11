class Origin < Formula
  desc "Origin CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/origin"
  version "0.8.3"
  url "https://github.com/7xuanlu/origin/releases/download/v0.8.3/origin-darwin-arm64.tar.gz"
  sha256 ""
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
