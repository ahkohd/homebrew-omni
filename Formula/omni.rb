class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.38"
  license "PolyForm-Shield-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.38/omni-aarch64-apple-darwin.tar.gz"
      sha256 "37db98a5d19c3ecffc33b85aa5698539f1686b071f6d3c2bb84056796235f388"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.38/omni-x86_64-apple-darwin.tar.gz"
      sha256 "fa28b8ef3efab8d0e0b5af2ace921726d4882f1947ce836dff111341d76a3208"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.38/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3b9458931e62a31c26e890130530212971d0cd7bd5565d26aed8589ecefb93fd"
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
