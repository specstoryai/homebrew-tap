class Stoa < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/stoa-releases"
  version "0.4.0"

  # Full release tag with URL-encoded + (%2B)
  release_tag = "v0.4.0%2B41"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_arm64.zip"
      sha256 "5b6099809db494df5fb51f8f2291adcc327853c097c5ecab2fbea621f8bd6781"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_x86_64.zip"
      sha256 "729cc79bbd1e5438607ebd628f3a7881460bb88c9c6fefe8d7aefe38c5e484b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_arm64.tar.gz"
      sha256 "db6ca5411969e8f9a24fbeb12ce664f951809d020b396edcc93632271480d49e"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_x86_64.tar.gz"
      sha256 "4c3837693caee2da0ab1f750971fd2a7aec4b42556d98bfc9c13db62fa260475"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "stoa", shell_output("#{bin}/stoa version")
  end
end
