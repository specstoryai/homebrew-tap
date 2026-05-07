class Stoa < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/stoa-releases"
  version "0.7.1"

  # Full release tag with URL-encoded + (%2B)
  release_tag = "v0.7.1%2B210"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_arm64.zip"
      sha256 "f52fde8ea42a7dd682abedc2f167e420724336b52721ae5f53bfbbc6521bc751"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_x86_64.zip"
      sha256 "c43a58c0433fce6a23a68cbd9b20b01aba812ecfddfe081e309ff91419c9d761"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_arm64.tar.gz"
      sha256 "06c1043a5e7459f6d8aac13ebe9e71bd5e9ce353bcf81e3535cdb53fffdc7c20"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_x86_64.tar.gz"
      sha256 "eab45660bcd406ae238ebcc7adae3bf902fef1a4ce432ff7fc46bc47e85bede3"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "stoa", shell_output("#{bin}/stoa version")
  end
end
