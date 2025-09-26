class Specstory < Formula
  desc "A claude code wrapper that saves your conversation history to markdown"
  homepage "https://github.com/specstoryai/getspecstory"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_arm64.tar.gz"
      sha256 "311e1607d1da8d39b7fb91cb6418839fa9c344d953d683d80a6214d581c89533"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Darwin_x86_64.tar.gz"
      sha256 "8e8b7b5bb4be558ef2b4bc86ea9fd27697183d390684256e2c6fa417e2341466"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_arm64.tar.gz"
      sha256 "059f0d65c1728153ff38a7e01acb6901206c82922d40aad31d7adb567ad46bfa"
    else
      url "https://github.com/specstoryai/getspecstory/releases/download/v#{version}/SpecStoryCLI_Linux_x86_64.tar.gz"
      sha256 "997610ca894d4f58466dcd032e7e67da9c2f09c5f3c372b09fd86b331b9f716f"
    end
  end

  def install
    bin.install "specstory"
  end

  test do
    assert_match "specstory", shell_output("#{bin}/specstory --version")
  end
end
