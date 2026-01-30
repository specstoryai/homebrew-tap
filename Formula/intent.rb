class Intent < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/intent"
  version "0.3.3"

  # Full release tag with URL-encoded + (%2B)
  # Update BUILD_NUMBER after each release
  release_tag = "v0.3.3%2B626"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_arm64.zip"
      sha256 "f48b84d41889ed8edea88210d5f9b544dcfb780b792c8ade3eeb4331b7929fcb"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_x86_64.zip"
      sha256 "ef95d71a41da892b2c8c5efc6f3eda9847f658ebbeb5269e47a175227307ed9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_arm64.tar.gz"
      sha256 "da4c14015116d46fe079087557d5a45428d80057e1cf1909e27f935ea26fd27e"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_x86_64.tar.gz"
      sha256 "75f87749e5ca7787e85d43e78b2a7a71f9e065d1898b15719817f7f76ffb3753"
    end
  end

  def install
    bin.install "intent"
  end

  test do
    assert_match "intent", shell_output("#{bin}/intent version")
  end
end
