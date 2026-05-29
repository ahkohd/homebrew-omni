class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.34"
  license "PolyForm-Shield-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.34/omni-aarch64-apple-darwin.tar.gz"
      sha256 "530c8ec0fb91e7f0441fd0673977b46ed77b2458b7f60666e26a2e43f3e91eae"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.34/omni-x86_64-apple-darwin.tar.gz"
      sha256 "7ceb8407246360bc2a77cc9324a1c65fcb34c69f126df56776d8ddcbfa4ca1a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.34/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3c63ab0b5fbf1676a49732d8f79412b8fd1c4f33c26b8e105cb835769204771"
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
