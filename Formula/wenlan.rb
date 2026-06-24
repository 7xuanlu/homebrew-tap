class Wenlan < Formula
  desc "Wenlan CLI — local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.9.1"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.9.1/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "f8906aa9845e7c01133efb58b35fd43137161563341e088bd3f8035371c04ee7"
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
