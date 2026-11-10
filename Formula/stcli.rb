class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.10.2/stcli_2026.11.10.2_darwin_universal.tar.gz"
  sha256 "6bb8beb61bea301cfff8ec71947aefe7ac7776966dc7d13f84714bb23e63fdfd"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.10.2/stcli_2026.11.10.2_linux_amd64.tar.gz"
      sha256 "4b6fa51bb557068cb968becc5530087130f2b07b44e3ad9165515afa8f194618"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.10.2/stcli_2026.11.10.2_linux_arm64.tar.gz"
      sha256 "01860ed8cf1c3720faf26ca626638d948987cda5887b2a177028bb6d8ee480c9"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
