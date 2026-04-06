class Omni < Formula
  desc "CLI for realtime transcription"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.5/omni-aarch64-apple-darwin.tar.gz"
      sha256 "ba7ddfb3e83a422d117533c7aa6cff8fcb8512d87f7f40fb77620b1461e226fa"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.5/omni-x86_64-apple-darwin.tar.gz"
      sha256 "6ab6cb92932d041db18f36739a31b525b2eaec1a337d66032517ec852b49327a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.5/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f28ce45dda6a15982b2396a7881543d6ee801331cacb13cf81a0801c8a5e365"
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
