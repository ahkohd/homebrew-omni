class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.19/omni-aarch64-apple-darwin.tar.gz"
      sha256 "bf19ae9d0e57b0bf3ac8e0d6aa3c84579aa379a69828886cc7d46ab75f1196d7"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.19/omni-x86_64-apple-darwin.tar.gz"
      sha256 "97b0abc663030983cd7fc433555b67c554380feb280b31ac3b1fcd0cf3e22fee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.19/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6915336381d8f49e526350b746af0f1685d7bdfb0c147e837af2fd9e9fb1cf54"
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
