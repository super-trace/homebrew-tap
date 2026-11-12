class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.12/stcli_2026.11.12_darwin_universal.tar.gz"
  sha256 "20c8ab3dd49147c9c5df7a2c039a1e55d34a030be1159db43d9dc75ca48344ad"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.12/stcli_2026.11.12_linux_amd64.tar.gz"
      sha256 "9b751b1dcabfd9a8f38b21e114f42835d9d654e98ab975fa57bfdd74e6f857f9"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.12/stcli_2026.11.12_linux_arm64.tar.gz"
      sha256 "815db86675d3c21d0b7ecec80f07c16f816836e63925261f16c63c80432e7b09"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
