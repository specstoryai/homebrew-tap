class Stoa < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/stoa-releases"
  version "0.8.0"

  # Full release tag with URL-encoded + (%2B)
  release_tag = "v0.8.0%2B318"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_arm64.zip"
      sha256 "0d4182b6b349627e86e89391cdd2768e90bf311cfaa3e1d30b0cf47414e01530"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_x86_64.zip"
      sha256 "0a428b9cb964f1eae1c70dd7df298af2e72819ca7d9255dd0f7fe2d5eaf93576"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_arm64.tar.gz"
      sha256 "b898a31ff54cbc254fffa0b09383f3940328fa0b7c8d971cd05a4c3fd24e6642"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_x86_64.tar.gz"
      sha256 "09a5d826a4bc6fffa2790e430d3ba9159b7a796ebe316ac8caa26f09796b64eb"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "stoa", shell_output("#{bin}/stoa version")
  end
end
