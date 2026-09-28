class Antaeus < Formula
  desc "Open-source semantic policy engine and CLI"
  homepage "https://antaeus.io"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.5.0/antaeus_0.5.0_darwin_arm64.tar.gz"
      sha256 "5d74dc765b1a61bdda1e6498fd9141641af63a3cafa1cb73ccf995594f8a3340"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.5.0/antaeus_0.5.0_darwin_amd64.tar.gz"
      sha256 "b80069eaaad1f070fb48048bff33eb3f07c98d9f9bac9a92f72b950c656346b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.5.0/antaeus_0.5.0_linux_arm64.tar.gz"
      sha256 "99ef73898270a1e1c8b7897887b4a2b38350d2b99142f92c8189a475f9e6ceeb"
    end
    on_intel do
      url "https://github.com/antaeusio/antaeus/releases/download/v0.5.0/antaeus_0.5.0_linux_amd64.tar.gz"
      sha256 "0b25198deacd0a492260730a76d2d256da46d201cdadef0b532a3f77a9d699ea"
    end
  end

  def install
    bin.install "antaeus"
  end

  test do
    assert_match "v0.5.0", shell_output("#{bin}/antaeus version")
  end
end
