class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.41"
  license "PolyForm-Shield-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.41/omni-aarch64-apple-darwin.tar.gz"
      sha256 "5e281e71fc86f1332775bfffa0192ccd36e09f9c50b5f9e03214ba150ad37965"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.41/omni-x86_64-apple-darwin.tar.gz"
      sha256 "645032174c04df4f2440833205c6e2b688912ffef4e57f3a468acd7ae8ba33fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.41/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bcbf70eb96951fab69347024811018c2f29973969ef27025c4d23c798babff5"
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
