class Stcli < Formula
  desc "Operate network equipment in plain English over your own SSH session"
  homepage "https://github.com/super-trace/stcli-releases"
  url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.3/stcli_2026.11.15.3_darwin_universal.tar.gz"
  sha256 "a950a1f4de609ebc05d97f46a5470f55da8a3c934839f0fee3a1c921b13a5523"

  on_linux do
    on_intel do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.3/stcli_2026.11.15.3_linux_amd64.tar.gz"
      sha256 "fa8c9a9f2ece4704c16898565befa940b37a18008fea98bd2aac23e4f970e39f"
    end
    on_arm do
      url "https://github.com/super-trace/stcli-releases/releases/download/v2026.11.15.3/stcli_2026.11.15.3_linux_arm64.tar.gz"
      sha256 "af771fe0846851bf09aa1a683e5e2a82b1a27481b13898f26a006f13c8bc1878"
    end
  end

  def install
    bin.install "stcli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stcli version")
  end
end
