class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.10/stcli_2026.11.10_darwin_universal.tar.gz"
  sha256 "fffe0fbfd15722349755a8d0044aa18e27452d2e319db3de3fa6642f7b41fd40"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.10/stcli_2026.11.10_linux_amd64.tar.gz"
      sha256 "101ace2981f655a7e9436dc4839d2e799415e4059b10a3eb8e8065104d7d8170"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.10/stcli_2026.11.10_linux_arm64.tar.gz"
      sha256 "c65c5cff25b045217736365ee85fa1248b0ba2f5d92d8ee77b1a08ecd88dfda3"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
