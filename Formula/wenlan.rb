class Wenlan < Formula
  desc "Wenlan CLI and daemon: docs, skills and rules your AI tools keep current"
  homepage "https://github.com/wenlan-app/wenlan"
  version "0.22.2"
  url "https://github.com/wenlan-app/wenlan/releases/download/v0.22.2/wenlan-darwin-arm64.tar.gz"
  sha256 "52336ea918de11724d84bcc7fc11593f57dc89a7557730cc4e936225334718f2"
  license "Apache-2.0"

  livecheck do
    url :homepage
    strategy :github_latest
  end

  on_macos do
    depends_on arch: :arm64
  end

  def install
    bin.install "wenlan", "wenlan-server"
  end

  test do
    assert_match "wenlan", shell_output("#{bin}/wenlan --help")
    assert_match "wenlan-server", shell_output("#{bin}/wenlan-server --help")
  end
end
