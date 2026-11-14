class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.14/stcli_2026.11.14_darwin_universal.tar.gz"
  sha256 "4dbe82f7f722e01490abc24b3a0e998053fae0567c513426d20ae9fa2bcbfb45"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.14/stcli_2026.11.14_linux_amd64.tar.gz"
      sha256 "15f882e12cc056ce955a623ac2ff00d20c2a8608a05f4f9dae318474dbc19ddf"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.14/stcli_2026.11.14_linux_arm64.tar.gz"
      sha256 "bcb53771b4a211369d5944ff100abcb0379e31f6502adf2b96cd158c23c9678f"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
