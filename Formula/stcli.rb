class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.19.2/stcli_2026.11.19.2_darwin_universal.tar.gz"
  sha256 "a789186dc5fac8210e5f7e20923a94ec026db6217ab8f3c3eda7268082b7a2aa"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.19.2/stcli_2026.11.19.2_linux_amd64.tar.gz"
      sha256 "fb661f24bcdc679d6c09a078e09a3830f8966e72bae138ae81c5321b01b6ce7b"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.19.2/stcli_2026.11.19.2_linux_arm64.tar.gz"
      sha256 "c6c00248adbc2a8273886e5540ee3f6f8aee98a84bfe2d68f8397bbe01998539"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
