class Antaeus < Formula
  desc "Open-source semantic policy engine and CLI"
  homepage "https://antaeus.io"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.3.0/antaeus_0.3.0_darwin_arm64.tar.gz"
      sha256 "b0ba1e7af3d2132fe06a02dbea8035e87dd893981f46111b0542079c15666468"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.3.0/antaeus_0.3.0_darwin_amd64.tar.gz"
      sha256 "7c51ffbbd5754a535632ca11e09f22ce1df6ddb3c11794a31dc8ffc7e45be82d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.3.0/antaeus_0.3.0_linux_arm64.tar.gz"
      sha256 "22d843a4ed29460170c9a33d0cb8ae6eae1b982a1223cbaa41629cae3f150b88"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.3.0/antaeus_0.3.0_linux_amd64.tar.gz"
      sha256 "e9bb2126fc7b62363f2efc726ef9440cd9666e93e5afa31263f4f5e89b3fc800"
    end
  end

  def install
    bin.install "antaeus"
  end

  test do
    assert_match "v0.3.0", shell_output("#{bin}/antaeus version")
  end
end
