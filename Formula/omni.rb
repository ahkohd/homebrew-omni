class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.39"
  license "PolyForm-Shield-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.39/omni-aarch64-apple-darwin.tar.gz"
      sha256 "a957f7d68b50b959baa1ae6c95a0e43357cc3d45db266d324db5ab86887fbca7"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.39/omni-x86_64-apple-darwin.tar.gz"
      sha256 "06a201415e2d1f99f96ecb6a74723dcb3b37cbcd90769af1037a2f192af98e82"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.39/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c72e7c47c1ed1b354335aa1b53efb35c0e8a147bb4c35dc7d6baee114134fe8d"
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
