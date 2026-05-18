class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.22/omni-aarch64-apple-darwin.tar.gz"
      sha256 "17c4c1cefd6681f51846322d9267d07b50a0bd3082fbd5a1e57b005b4847868b"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.22/omni-x86_64-apple-darwin.tar.gz"
      sha256 "39c501a1194a526abad3c545375e787c21b5d9bac7aae12f288b3741ad4f92e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.22/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cc6d73b467c295c9c863a01cf236fd26d93d90fbfb0aff30dfc7024efd9487e5"
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
