class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.9/omni-aarch64-apple-darwin.tar.gz"
      sha256 "874423819211b6922edb1e495dc659956b5140307400821bec098679459b6613"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.9/omni-x86_64-apple-darwin.tar.gz"
      sha256 "ebc2e02c30bfbfc7488aeaa513fa697103bd76d9a266604c579fadaebb6328c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.9/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a68c7a7bde737f72bdf7b1c92bbd7102e33a1f4eb3a8463d25322bcfba6c5ec"
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
