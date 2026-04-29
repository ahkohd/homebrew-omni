class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.13/omni-aarch64-apple-darwin.tar.gz"
      sha256 "8aa230180b47c2c859b498619450c98ea7526ad9f669051889e9cbd8fe393508"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.13/omni-x86_64-apple-darwin.tar.gz"
      sha256 "ee04e8f9ea812b26c9c1b1d4a15fddae364303f9767e7d4e2a626f8db6a51ddc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.13/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "eb0eda539ee6911737e3eb85c0016e1c969ac50f336e17dbf4b2106e17a1699d"
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
