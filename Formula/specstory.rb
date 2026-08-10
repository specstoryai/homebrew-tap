class Specstory < Formula
  desc "A claude code wrapper that saves your conversation history to markdown"
  homepage "https://github.com/specstoryai/getspecstory"
  version "2.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_arm64.tar.gz"
      sha256 "ef70a4278ab5ef2f98618e517fc2d61b2aba192dffd42a46ea03d2de9141bf24"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_x86_64.tar.gz"
      sha256 "c9d06d6199791b7834994e19ead8f3de0a85bb627a45f44e60222fc4daf0d9d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_arm64.tar.gz"
      sha256 "ea72ef033e47a53278187977e7527bef8880272ce98e2aa6b7d7404d974ebe59"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_x86_64.tar.gz"
      sha256 "c57617d6c7a316ed9348b4243754d38d2e1092260772fc3fd11513a855453c3c"
    end
  end

  def install
    bin.install "specstory"
  end

  test do
    assert_match "specstory", shell_output("#{bin}/specstory --version")
  end
end
