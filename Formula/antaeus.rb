class Antaeus < Formula
  desc "Open-source semantic policy engine and CLI"
  homepage "https://antaeus.io"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.2.0/antaeus_0.2.0_darwin_arm64.tar.gz"
      sha256 "fc29543846c6b0e966cd7fd7441a8999bd94a9bf875a600a18af4bcfd84b3fe2"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.2.0/antaeus_0.2.0_darwin_amd64.tar.gz"
      sha256 "2a7e2cc18781df0a8ad46a8249b146283c21079dce92d4e9f97482f30b8a9560"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.2.0/antaeus_0.2.0_linux_arm64.tar.gz"
      sha256 "9f85ceff8946d63b3d765ead829234ca1d6f8d42c59176907144355fe105d363"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.2.0/antaeus_0.2.0_linux_amd64.tar.gz"
      sha256 "cd22939e95626b348fc7485c87d48238fdf3d746a037e3a927d79b1e3e4d8f2f"
    end
  end

  def install
    bin.install "antaeus"
  end

  test do
    assert_match "v0.2.0", shell_output("#{bin}/antaeus version")
  end
end
