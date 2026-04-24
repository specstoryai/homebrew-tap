class Stoa < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/stoa-releases"
  version "0.5.0"

  # Full release tag with URL-encoded + (%2B)
  release_tag = "v0.5.0%2B107"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_arm64.zip"
      sha256 "5226b921579f6778ee3a4169b9860c31e88fa4a30c983be4154641465a7ab49b"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_x86_64.zip"
      sha256 "53c6b844c0802583d9187b21e6708923e9daca961ce4aaf141d3a2ffc58330e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_arm64.tar.gz"
      sha256 "6bf67af4914de90890d8722c4d97caca07e07c4f44b26c758c195a1e28f4cb39"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_x86_64.tar.gz"
      sha256 "48f835ba4604189db49e6584ca931541bf3d0deab1fe28831d7237540c6fce1b"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "stoa", shell_output("#{bin}/stoa version")
  end
end
