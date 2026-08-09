class Wenlan < Formula
  desc "Wenlan CLI â€” local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.8"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.8/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "f368806d022bbf8bf8ca15039020675ac6fce774843490b488a17f3ee92c6872"
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
