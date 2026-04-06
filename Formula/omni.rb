class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.6/omni-aarch64-apple-darwin.tar.gz"
      sha256 "8993428bc7502ef465ce4d140fe9263582b44750b5e3604fb6867a70772f5e39"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.6/omni-x86_64-apple-darwin.tar.gz"
      sha256 "0c789233b3e6b55a488e264eea187b73f7208def24a21be86fcd0cb180ba33d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.6/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "596301e47ef42d981e10a0f09a05a3ae52f245a97c57fa1f9c377deaa0b31368"
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
