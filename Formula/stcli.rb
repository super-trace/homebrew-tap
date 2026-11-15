class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.2/stcli_2026.11.15.2_darwin_universal.tar.gz"
  sha256 "8eccbcdf568f5b11dc88bff7acf825bcc3cdaa294685cea9722ea880ccd4ce80"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.2/stcli_2026.11.15.2_linux_amd64.tar.gz"
      sha256 "bc7dc42f84546c9715225d18e52fc280a3c32878073e847382b779a39e1acf70"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.2/stcli_2026.11.15.2_linux_arm64.tar.gz"
      sha256 "4901d67ab5245a3ea6022b057f9f19d05d10b006bf74cea6721659ce6dd46cc7"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
