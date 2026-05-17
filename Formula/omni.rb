class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.21/omni-aarch64-apple-darwin.tar.gz"
      sha256 "a7ec06f2978c4c81b00fdc5a8e2e7fc6aaf0d845b1fafb7c5f196bec422a42d6"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.21/omni-x86_64-apple-darwin.tar.gz"
      sha256 "b8da97a13eef02d1ed5304fab7e96b3e99f30ac15f8c69c834aacb1b366284ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.21/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "64fa5464562be70df79a7be6390fe226aa6cd40552360a93953b63fc60eb1994"
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
