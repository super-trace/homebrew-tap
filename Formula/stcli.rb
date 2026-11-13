class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.2/stcli_2026.11.13.2_darwin_universal.tar.gz"
  sha256 "117c5425cf0dba8f84dfe27d3a59fe3c15412ee7225d5ef293996c56a0427014"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.2/stcli_2026.11.13.2_linux_amd64.tar.gz"
      sha256 "c6448abb78ab6e2c6449c24c70a5e1f46bb6bd20ca389abe96beadbdc7305ee0"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.2/stcli_2026.11.13.2_linux_arm64.tar.gz"
      sha256 "ba1010d9d13004738603a40eb0ec0f505d50618af911c81e42cec641166280b4"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
