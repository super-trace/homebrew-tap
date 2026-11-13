class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.3/stcli_2026.11.13.3_darwin_universal.tar.gz"
  sha256 "d716c231648c76257dafb26189ba03793dc314919df7084a41473a98c12dd642"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.3/stcli_2026.11.13.3_linux_amd64.tar.gz"
      sha256 "f8449a7dfdeb581f32282c81f8da8cb285506db38b1828d2f9ef013a5a04c278"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.13.3/stcli_2026.11.13.3_linux_arm64.tar.gz"
      sha256 "ced6062473e9635eb8c49a48a00f3ddb711a83aeae98932d0cf7a34d06104d16"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
