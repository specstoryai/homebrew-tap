class Specstory < Formula
  desc "A claude code wrapper that saves your conversation history to markdown"
  homepage "https://github.com/specstoryai/getspecstory"
  version "2.14.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_arm64.tar.gz"
      sha256 "7778a1d0b0040753a2d6ae538b71d8b66d3f04416501cc64683b9d58f77460f2"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_x86_64.tar.gz"
      sha256 "bd4de59f096c2a1719d082e91dd9701d3774d3530aee61057a8f2ee337140f6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_arm64.tar.gz"
      sha256 "3463666e8d2a23b4e6405a074ea0d7327f48eafcb4cbce7c9c92fab771075412"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_x86_64.tar.gz"
      sha256 "55a2db845a19d0908b4d19a5f6d13bf430ec07ab237bf70ee3562ecd0f8a0698"
    end
  end

  def install
    bin.install "specstory"
  end

  test do
    assert_match "specstory", shell_output("#{bin}/specstory --version")
  end
end
