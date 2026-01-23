class Intent < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/intent"
  version "0.3.1"

  # Full release tag with URL-encoded + (%2B)
  # Update BUILD_NUMBER after each release
  release_tag = "v0.3.1%2B571"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_arm64.zip"
      sha256 "6e9af56e40d6db01c7f147f75e5622b7b1ff70fb48e38650b5d7efc295ca7811"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Darwin_x86_64.zip"
      sha256 "f68ee8ee7f2fa0b824bf89d3fa595272f46f988c99198a34a2715599ea0b3fac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_arm64.tar.gz"
      sha256 "d99b3a19f8d310bb43511e6a8492e87cf867398b64551c1e7ee5a901133f41f1"
    else
      url "https://github.com/specstoryai/intent-releases/releases/download/#{release_tag}/Intent_Linux_x86_64.tar.gz"
      sha256 "83b20d54964f27841b41a1e42739e7e530ac3edea7e1f2939aeffb209646cd6f"
    end
  end

  def install
    bin.install "intent"
  end

  test do
    assert_match "intent", shell_output("#{bin}/intent version")
  end
end
