class Intent < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/intent"
  version "0.3.0"

  # Full release tag with URL-encoded + (%2B)
  # Update BUILD_NUMBER after each release
  release_tag = "v0.3.0%2B570"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_arm64.zip"
      sha256 "4c50d353567d0da6fae51f6e6ffdfa24fff8194bfef984d73601326afd9ed3a7"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_x86_64.zip"
      sha256 "37440f897b1e31a6e000f4d1a397ba675040d43cfc301abe484a179709dc6db6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_arm64.tar.gz"
      sha256 "0efd9f2d633d72540eeb8580fbcb231317448eef5bf2a1d74b1910b84550023b"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_x86_64.tar.gz"
      sha256 "076f992a0d9d28c31e699e5a0ccc6b59ccdbc0cfc08ea4df5aa3c0e0ec1fe940"
    end
  end

  def install
    bin.install "intent"
  end

  test do
    assert_match "intent", shell_output("#{bin}/intent version")
  end
end
