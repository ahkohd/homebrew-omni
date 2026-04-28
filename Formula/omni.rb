class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.12/omni-aarch64-apple-darwin.tar.gz"
      sha256 "26ce1d4a40f64b0007c125cf52c0cab174cd8619cebfab6219add665ddddf14c"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.12/omni-x86_64-apple-darwin.tar.gz"
      sha256 "ef0f647e7a3147f114c1749bc0e2cabe5260ae2236054e602073e93a4d298c21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.12/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81685a9c28c3619b8f73e07e729d40863c4cb619cf3571033067877ae5e78ee9"
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
