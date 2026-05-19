class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.26"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.26/omni-aarch64-apple-darwin.tar.gz"
      sha256 "c463e81f7c181ab31d89293cd78f103199f67d0afa2339cda8c60b1d60bb1ba2"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.26/omni-x86_64-apple-darwin.tar.gz"
      sha256 "f7c6761e34d9279414cd5280ca6c521201023403e694d64dce50b71cd8c17001"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.26/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76c5cf67667223cf1b805c249d2e619cb0fbc7f3673f56eda1a18053639d2ebb"
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
