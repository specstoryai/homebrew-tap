class Stoa < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/stoa-releases"
  version "0.6.0"

  # Full release tag with URL-encoded + (%2B)
  release_tag = "v0.6.0%2B194"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_arm64.zip"
      sha256 "d18fc53362d17886c8cd0ef70e52479fe9710c9b8aac5ca9d8e87b61b3726bf6"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_x86_64.zip"
      sha256 "145b71e1d7ea34c9b5ff078bad4dd1df028c885698974b52fba8c9a76b0ddfb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_arm64.tar.gz"
      sha256 "4f31bf41eeceee1aa491e3d5f26e39fa63a47cf8069f1c0565822dbeba9bf27a"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_x86_64.tar.gz"
      sha256 "81304eb88e913a9ee71a75dc6c447813047027f254d4e5c3272863807d95abfa"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "stoa", shell_output("#{bin}/stoa version")
  end
end
