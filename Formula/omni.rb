class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.20/omni-aarch64-apple-darwin.tar.gz"
      sha256 "176b6f0dff29b196a0de3ae2c235c4a3141fb9b9d1cf7a457264ceb9672d15b3"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.20/omni-x86_64-apple-darwin.tar.gz"
      sha256 "0a8984ab7cab6f4071a6699d79204b06711231e05b7c5d7577749ee7f91939df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.20/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de6a59affcbf30a3d074720958f74968ecc86376e0ba67f756ce34e24a29b409"
    end
  end

  def install
    bin.install "omni"
    bin.install "omni-transcribe-ui"
    bin.install "omni-ui-tail"
  end

  test do
    system "#{bin}/omni", "--version"
  end
end
