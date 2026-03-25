class Intent < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/intent"
  version "0.3.3"

  # Full release tag with URL-encoded + (%2B)
  # Update BUILD_NUMBER after each release
  release_tag = "v0.3.3%2B1136"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_arm64.zip"
      sha256 "3707246f932ac9c114f76a4eb696a887b367122f37dee359cbf49b1dc03ff408"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_x86_64.zip"
      sha256 "83015f307670c3b2f4732b611401094f7297965d5a59e9add464ff1a30d19700"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_arm64.tar.gz"
      sha256 "916a4b05a9b2c15a0a7dd5bfec3271f61e4dab1ee5446003fc8ee082d4a06fa4"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_x86_64.tar.gz"
      sha256 "290ac2edb5ff80cd22f7f6b0a67cf5bb7bd3a9153efd3969fabffb8b27004b79"
    end
  end

  def install
    bin.install "intent"
  end

  test do
    assert_match "intent", shell_output("#{bin}/intent version")
  end
end
