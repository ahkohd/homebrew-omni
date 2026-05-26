class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.29/omni-aarch64-apple-darwin.tar.gz"
      sha256 "6546b090f20a681dd508f2e4059a5c0e6ba4c57e31ecae29e7aaed3646778a37"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.29/omni-x86_64-apple-darwin.tar.gz"
      sha256 "b9aab36e47c47869c52f3140efe56077dfe6623b1c2f50b9e2ff8c06ad6b776b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.29/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2355d1600c6db63c7dd50704f8a6e01a6a83fb879f98648e6f0093ce22f11ed6"
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
