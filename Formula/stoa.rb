class Stoa < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/stoa-releases"
  version "0.4.0"

  # Full release tag with URL-encoded + (%2B)
  release_tag = "v0.4.0%2B38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_arm64.zip"
      sha256 "45d8421c3f65969e8afe9cbe29c5f37a563d817a4ab19a4083a36b157459242e"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_x86_64.zip"
      sha256 "fdf8f5dd54d5e39da1ffdf0560551657c48f96783ba1460bb7bf500629566e95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_arm64.tar.gz"
      sha256 "7a969a6c375ebc2744c06178dff434a3624a19fc28f85b52fbdf48afb84c8c0d"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_x86_64.tar.gz"
      sha256 "05ab408af0d25279ca0e60457daaaa64fdfd9bb2072a93175d67d7f4e352bb3b"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "stoa", shell_output("#{bin}/stoa version")
  end
end
