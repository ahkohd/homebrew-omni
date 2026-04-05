class Omni < Formula
  desc "CLI for realtime transcription"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.4/omni-aarch64-apple-darwin.tar.gz"
      sha256 "37fb7ccdd18d2c48236bb340e30134ff1a7bc84c34cef82148d1b04dce4b8625"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.4/omni-x86_64-apple-darwin.tar.gz"
      sha256 "19f2e8c4a745b52faf4daf5431110c47090ef0dbf70bde5339816d9147614616"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.4/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7611bc83bd09c507f8b35e1b6fddd2c6c2baec401fa62dca57b2bbf1587fea1a"
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
