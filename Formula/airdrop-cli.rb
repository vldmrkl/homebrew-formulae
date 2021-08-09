class AirdropCli < Formula
  desc "macOS CLI for AirDrop"
  homepage "https://github.com/vldmrkl/airdrop-cli"
  url "https://github.com/vldmrkl/airdrop-cli/archive/1.0.1.tar.gz"
  sha256 "2e93796692fddb13e362bfd9c204bfc2f24ef22fadaf09efe97201d0bc9b54c3"
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
