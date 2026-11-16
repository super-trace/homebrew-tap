class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16.3/stcli_2026.11.16.3_darwin_universal.tar.gz"
  sha256 "2df597fb2adeb7e501d1868be4faef77ec049cbc44a41a0d5db62d28e8f5d900"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16.3/stcli_2026.11.16.3_linux_amd64.tar.gz"
      sha256 "7698f34d85f8aa6499967af98e2813d908324de40fdfa5efb3a1f3ff02b58787"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16.3/stcli_2026.11.16.3_linux_arm64.tar.gz"
      sha256 "8907636aa0fd3f73669854ecade26e5bfe6093b8de62611cc2188fc13bb55a7e"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
