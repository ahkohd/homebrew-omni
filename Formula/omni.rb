class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.15/omni-aarch64-apple-darwin.tar.gz"
      sha256 "06a86252b4eed24aec72c014d94b1d8b71c09bbe9b311ee3f6951ec1e3e1895e"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.15/omni-x86_64-apple-darwin.tar.gz"
      sha256 "1d8513721706e6669793231d0fd836d82f354fd823f4284155649e30733dd6a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.15/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "78c1caf319fe72578f3e149baecc88c8ee30fb95bfafdc7adafb305839fd64f3"
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
