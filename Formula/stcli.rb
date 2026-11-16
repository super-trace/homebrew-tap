class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16/stcli_2026.11.16_darwin_universal.tar.gz"
  sha256 "a6d1b981d28e05325b418ebd9bb5647f1879648eb41d97850cc11fd2047ead77"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16/stcli_2026.11.16_linux_amd64.tar.gz"
      sha256 "f3c0d95e87a26e0e4ccf0a465c610c474a376aa23114c22d747e54bb94937531"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.16/stcli_2026.11.16_linux_arm64.tar.gz"
      sha256 "dfd1fa16ef1ac1c6ff9c512ba387667f683767a7d387c93aa2ac39b62f8a6ba0"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
