class AirdropCli < Formula
  desc "macOS CLI for AirDrop"
  homepage "https://github.com/vldmrkl/airdrop-cli"
  url "https://github.com/vldmrkl/airdrop-cli/archive/1.0.1.tar.gz"
  sha256 "3749d9f308e8651b8220ae09eab4917743f1f89d"
  license "MIT"
  head "https://github.com/vldmrkl/airdrop-cli.git"
  version "1.0.1"
  depends_on xcode: "11.4"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    mv ".build/release/airdrop", "airdrop"
    bin.install "airdrop"
  end

  test do
    system "#{bin}/airdrop", "-h"
  end
end
