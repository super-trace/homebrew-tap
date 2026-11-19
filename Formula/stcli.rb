class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.19/stcli_2026.11.19_darwin_universal.tar.gz"
  sha256 "26ea37cff1a1755ff8366eebc6ac42a7c622b3e033c8c4a46b898d626be6112d"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.19/stcli_2026.11.19_linux_amd64.tar.gz"
      sha256 "9e4cbefb07274659f2097f5c9588d33ff73259c65b71871779874db3cb3fc1f0"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.19/stcli_2026.11.19_linux_arm64.tar.gz"
      sha256 "eb79e3bc0ca47d7b176898ace37cb2a0f852c4d6f572b7993b9de6683a062b5f"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
