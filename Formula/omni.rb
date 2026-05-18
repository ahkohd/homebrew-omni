class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.25"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.25/omni-aarch64-apple-darwin.tar.gz"
      sha256 "c73a4288bd393a12060c334866d63a472f727e944f123efe579d756198786a8c"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.25/omni-x86_64-apple-darwin.tar.gz"
      sha256 "9dfd8cb1748d8c3d80b68d7533b88604e63ed27270ca8cbb58c4b61e30b7a5b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.25/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "409be4d7040dd745e91b1484263ec0f858a1df1f93c17acd9d379f1ccab2108a"
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
