class Intent < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/intent"
  version "0.3.0"

  # Full release tag with URL-encoded + (%2B)
  # Update BUILD_NUMBER after each release
  release_tag = "v0.2.0%2B556"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_arm64.zip"
      sha256 "b0c034ef636e4cc1848929bde187de42f45276fb7e68a6b759f84a101942e0a3"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_x86_64.zip"
      sha256 "301b49622dfe3b53db1b7f44cd49b19ca9b2b1eea2f5383bd860acfb2e96e600"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_arm64.tar.gz"
      sha256 "3f7a124528cf331fc926e051064cfbdd7a9a2832ce47e570ce4c10f2e23f591b"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_x86_64.tar.gz"
      sha256 "9f6b62f91b77d49f5ff2576d719cb11b290802c5b5d963f13bfc0fab452f47fc"
    end
  end

  def install
    bin.install "intent"
  end

  test do
    assert_match "intent", shell_output("#{bin}/intent version")
  end
end
