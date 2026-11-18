class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.18/stcli_2026.11.18_darwin_universal.tar.gz"
  sha256 "cb06ce43ab769d7742aebd4c03ee649606d0954b9d9f94bda2cbcd97fc4eda24"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.18/stcli_2026.11.18_linux_amd64.tar.gz"
      sha256 "6dee46d6ee11be977d89120a19d4c03c4c9f4737cdfcc0db8b4dfbcdf56899a5"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.18/stcli_2026.11.18_linux_arm64.tar.gz"
      sha256 "dd871c4a84606d26d875998135ee41592aef4406dec28828df7b0663cd9dfb06"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
