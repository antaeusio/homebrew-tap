class Antaeus < Formula
  desc "Open-source semantic policy engine and CLI"
  homepage "https://antaeus.io"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.4.0/antaeus_0.4.0_darwin_arm64.tar.gz"
      sha256 "a75b5433a75e0a281bf7455a78fc16278cb00f22d03c355baac53cd3604d3811"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.4.0/antaeus_0.4.0_darwin_amd64.tar.gz"
      sha256 "62cbc702a8e34c5d1d4413392994c10aa39afdaa31249f62ddaac6f00fab5957"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.4.0/antaeus_0.4.0_linux_arm64.tar.gz"
      sha256 "4c40d4275135ec9a567e591e1e690be5ca4b3ee56c983a7e865b0d7dc5a72aed"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.4.0/antaeus_0.4.0_linux_amd64.tar.gz"
      sha256 "174d010036f4155bfc34928228064e0266217c5672b150020853cb1f0b8446c6"
    end
  end

  def install
    bin.install "antaeus"
  end

  test do
    assert_match "v0.4.0", shell_output("#{bin}/antaeus version")
  end
end
