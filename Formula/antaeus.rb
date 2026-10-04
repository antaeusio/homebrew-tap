class Antaeus < Formula
  desc "Open-source semantic policy engine and CLI"
  homepage "https://antaeus.io"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.6.0/antaeus_0.6.0_darwin_arm64.tar.gz"
      sha256 "71c70c71c281921e17234053454179cb0f5f9ae30f6c0874d918a7dfa148c647"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.6.0/antaeus_0.6.0_darwin_amd64.tar.gz"
      sha256 "3fcd7a63fba61621accf107e2304a6b380dacad0a9f1e5e44f2e04d4057807f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.6.0/antaeus_0.6.0_linux_arm64.tar.gz"
      sha256 "014beb7a96cc249213958e4bc2e914e99d12753618e7f1146a7435d774a8cef9"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.6.0/antaeus_0.6.0_linux_amd64.tar.gz"
      sha256 "83844bfe78ebc1c01db06379df32621dae36d2df02209b8b8a588fff7bd08c58"
    end
  end

  def install
    bin.install "antaeus"
  end

  test do
    assert_match "v0.6.0", shell_output("#{bin}/antaeus version")
  end
end
