class Specstory < Formula
  desc "A claude code wrapper that saves your conversation history to markdown"
  homepage "https://github.com/specstoryai/getspecstory"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_arm64.tar.gz"
      sha256 "9995ee2ed855a825587dcf11cdf2e78cf3c5111a8e11bc43097ef167dfa29a02"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_x86_64.tar.gz"
      sha256 "6c988a3559b906914f3a3b6711f37efa30530d1783497c750e48ad3e51d9733d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_arm64.tar.gz"
      sha256 "94c295fef96715f250c4264db3e6aa9be4cdb615702486331a6d1e62d4e01e4c"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_x86_64.tar.gz"
      sha256 "1f7b455010fce250f928887d1979c1a783a632e2a87641e4ccbfdac5b9458724"
    end
  end

  def install
    bin.install "specstory"
  end

  test do
    assert_match "specstory", shell_output("#{bin}/specstory --version")
  end
end
