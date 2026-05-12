class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.18/omni-aarch64-apple-darwin.tar.gz"
      sha256 "31207b24adcccb32751693b76b9006aece79921836e55b10841a2461455d21e7"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.18/omni-x86_64-apple-darwin.tar.gz"
      sha256 "ce1f6785b28e7f1394a7711848c3022bb48e73d20e535a2cd7405fa7db1ac209"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.18/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7f2049294a1ddbb31ac278944b5bf14e67e34c6ddcc8c9f179bce99171b9930"
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
