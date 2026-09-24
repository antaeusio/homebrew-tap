class Antaeus < Formula
  desc "Open-source semantic policy engine and CLI"
  homepage "https://antaeus.io"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.1.0/antaeus_0.1.0_darwin_arm64.tar.gz"
      sha256 "2908b06a76e46b7adfafc53075a82afa88d0777077c6f394734fbe0c8c8938e1"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.1.0/antaeus_0.1.0_darwin_amd64.tar.gz"
      sha256 "b2b0c7af8a6a61e8bf6732bb13429ff27bf1cdad4782822aa89a6a9362cf177a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.1.0/antaeus_0.1.0_linux_arm64.tar.gz"
      sha256 "c2bb9d4355500763cd943c1ee6f6ab26d451c13df8ccb7931d396c57aa274be9"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.1.0/antaeus_0.1.0_linux_amd64.tar.gz"
      sha256 "a15b5effc952135d7d4fccfeb7de15738c16060802f068648aa07b567260d06c"
    end
  end

  def install
    bin.install "antaeus"
  end

  test do
    assert_match "v0.1.0", shell_output("#{bin}/antaeus version")
  end
end
