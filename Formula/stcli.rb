class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.5/stcli_2026.11.13.5_darwin_universal.tar.gz"
  sha256 "db4bee791ba5e1ea8120a509847607b2b5d2d0e01f51ab981760a42a95f30dd9"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.5/stcli_2026.11.13.5_linux_amd64.tar.gz"
      sha256 "3dd51c850c14aba3a7fa6af67f4eddbfc66b9bc42fec9856774fac65b0b0b4d9"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.5/stcli_2026.11.13.5_linux_arm64.tar.gz"
      sha256 "a59d35d9ff28ab3f054307cb8e72c31bf80c9c04e41716d8098455cb22d2c046"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
