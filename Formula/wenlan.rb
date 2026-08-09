class Wenlan < Formula
  desc "Wenlan CLI â€” local-first memory + knowledge layer for AI agents"
  homepage "https://github.com/7xuanlu/wenlan"
  version "0.15.6"
  url "https://github.com/7xuanlu/wenlan/releases/download/v0.15.6/wenlan-cli-darwin-arm64.tar.gz"
  sha256 "f6d3b766a130fd5a57843bb8f4a4d3153771a8b9882056585160842b39e5307f"
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
