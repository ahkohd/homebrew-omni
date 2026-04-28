class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.10/omni-aarch64-apple-darwin.tar.gz"
      sha256 "eb5fcb50f2c89ef70a32faf9b8cdf17e01b974e575fbda5d87e76a77f38124e7"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.10/omni-x86_64-apple-darwin.tar.gz"
      sha256 "a11d2732b76ced35992f1417f3398a1ede3139f3703f7098bfd6a5ee7270a08e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.10/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "121bff14aa9e32fc5134ef6702b28234ecec029a0d06826fd66a56dec20599d4"
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
