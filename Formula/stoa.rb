class Stoa < Formula
  desc "Version control system for coding agents that tracks file changes linked to conversations"
  homepage "https://github.com/specstoryai/stoa-releases"
  version "0.7.0"

  # Full release tag with URL-encoded + (%2B)
  release_tag = "v0.7.0%2B199"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_arm64.zip"
      sha256 "52d5d007d4fab5d3ee16e9c9797c620cfd171464348efd47c00b2ef58a014e60"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Darwin_x86_64.zip"
      sha256 "ed32bdd96e118506979ff1b14c5aa71216de9e2737e2edab133c9326d5108fcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_arm64.tar.gz"
      sha256 "777ecb1c37d0a64d1ba28e746a5e4bdf745fae04e67b50111b2a439cf97f4742"
    else
      url "https://github.com/specstoryai/stoa-releases/releases/download/#{release_tag}/Stoa_Linux_x86_64.tar.gz"
      sha256 "1cd96bd88ac57f4587780aa8d8b9645bb77e11d62b8cfe50e616b4ef17142067"
    end
  end

  def install
    bin.install "stoa"
  end

  test do
    assert_match "stoa", shell_output("#{bin}/stoa version")
  end
end
