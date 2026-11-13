class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.4/stcli_2026.11.13.4_darwin_universal.tar.gz"
  sha256 "dbc3ba58d48b05e0e45599b9c61d7ce0bd0255c798fe4fa5da81f93c5ebfa374"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.4/stcli_2026.11.13.4_linux_amd64.tar.gz"
      sha256 "9c2f62eca13f5670f6ff829009014f93dab9e06d159c0561cb7c4d3e83b0d8c6"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.4/stcli_2026.11.13.4_linux_arm64.tar.gz"
      sha256 "b818b97f35792b1e7eef5d186cb9f0adaa80355669e7ffd6de0beffe9dcbc807"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
