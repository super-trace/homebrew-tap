class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.11/stcli_2026.11.11_darwin_universal.tar.gz"
  sha256 "11c3eb6bf95c71f2c10a0f39a7e603ee5bcdb1e373f10ed00c961da23ff483f8"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.11/stcli_2026.11.11_linux_amd64.tar.gz"
      sha256 "3bba4dd4697125de736d2177b00edef2c623f8e3e825aa207005cf623c4b429c"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.11/stcli_2026.11.11_linux_arm64.tar.gz"
      sha256 "de22cc3c2b9c132628a40a2b720f8356343ae6bd820a972f5983f3d5895cec2d"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
