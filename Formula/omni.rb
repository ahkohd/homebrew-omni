class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.24"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.24/omni-aarch64-apple-darwin.tar.gz"
      sha256 "6380795c939aa1f4aa71a8b384ca7d5ac224448217e1435048832dbd0087e441"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.24/omni-x86_64-apple-darwin.tar.gz"
      sha256 "45007d34796c363020d66e3190eded9cfaa7bd7e688b048d0c2e62a44f3014d4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.24/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c4c96495e9d73b34d899b9ceff472a480cc3f5a1b7f2a57b21345adb58b9925"
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
