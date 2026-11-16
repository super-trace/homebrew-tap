class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16.2/stcli_2026.11.16.2_darwin_universal.tar.gz"
  sha256 "1e6dbc12ff3a32f132079ae1ce0971a5cd1646a4f52ca8019f66cdc3b366f632"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16.2/stcli_2026.11.16.2_linux_amd64.tar.gz"
      sha256 "ea74155bceccba43aa40547d426f3335c5056892b1d08329f5ae995491acced9"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16.2/stcli_2026.11.16.2_linux_arm64.tar.gz"
      sha256 "66dfd75b14c8d350a50c13bc83ff67d6c14899c99145d68bffbfa786bf857721"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
