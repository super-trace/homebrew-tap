class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.4/stcli_2026.11.15.4_darwin_universal.tar.gz"
  sha256 "71d501823a91b850ea8d5b7afbec956d2513a2cfc9b816ffbd7421b173f6c401"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.4/stcli_2026.11.15.4_linux_amd64.tar.gz"
      sha256 "ca10ffc865de4ba266c5d00af7b6db67d2605793d2a80d4618db9a90dc65cbc0"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.4/stcli_2026.11.15.4_linux_arm64.tar.gz"
      sha256 "98497b9099124886a6cceaf0e89d86ba89731df506d7f6382a1a4a0d4ee84df0"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
