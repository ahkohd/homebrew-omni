class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.8/omni-aarch64-apple-darwin.tar.gz"
      sha256 "edccdb3232da1c0d7f4ccb2cb04d0a15bf59f4e7d1db9f773aa3ae8ea847ff35"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.8/omni-x86_64-apple-darwin.tar.gz"
      sha256 "a17b5cad75e1024d05f18f8acb28ddea1ad6746670893d7eacd169413f13bd19"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.8/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fefe6e0977de8f77c57ce7e08972a7d3934aa76073184f51b1a5a0f9d00a6b6"
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
