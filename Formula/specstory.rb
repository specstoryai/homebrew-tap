class Specstory < Formula
  desc "A claude code wrapper that saves your conversation history to markdown"
  homepage "https://github.com/specstoryai/getspecstory"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_arm64.tar.gz"
      sha256 "5990c0ffe4a5c61716a976fb346990b5f59d16c6f0e113dfad6bc8f1434efcd3"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_x86_64.tar.gz"
      sha256 "fc08ce6bd2f423b5377d4d520169b5ee02d85a4cef8d60975611dbef4410bc4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_arm64.tar.gz"
      sha256 "1b27c3e499a717926736816c446c668d0f2171876c72f15e53b1b87281cbd5eb"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_x86_64.tar.gz"
      sha256 "c9f82b6f3a3bab1e16ba262428518a33f6090e43a5aaf469889327821b829eea"
    end
  end

  def install
    bin.install "specstory"
  end

  test do
    assert_match "specstory", shell_output("#{bin}/specstory --version")
  end
end
