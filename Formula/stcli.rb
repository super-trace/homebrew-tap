class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15/stcli_2026.11.15_darwin_universal.tar.gz"
  sha256 "18612ece5f1c86981ffda5adcdcb8fc3411bdc67cdf86e24d6aaed4e193414c2"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15/stcli_2026.11.15_linux_amd64.tar.gz"
      sha256 "45825fecaa09a3bf20a9b79762026b87eb7c34eeba02dd66058bae1f026976a8"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15/stcli_2026.11.15_linux_arm64.tar.gz"
      sha256 "79eeeab0630daf40fe3ffaf2c53005874d8a749d4794f9c4594ba1292033bb21"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
