class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13/stcli_2026.11.13_darwin_universal.tar.gz"
  sha256 "287c476c3a72276e2297fd4c9f2fef34a4e05f1d394665b456431d95d47500a1"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13/stcli_2026.11.13_linux_amd64.tar.gz"
      sha256 "2d1021e8c790ee1657c1af48491ca3a704e8927d8e07d0b7614e1aeba61fd615"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13/stcli_2026.11.13_linux_arm64.tar.gz"
      sha256 "a22f9f04db8d98d0718216b3ae698b26027f0dabd4027f6779ee67fad859adec"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
