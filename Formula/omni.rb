class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.23"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.23/omni-aarch64-apple-darwin.tar.gz"
      sha256 "cf9514f78f754a17d9d20f939010a1c8874a7349f6b5f579827a231d71937fac"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.23/omni-x86_64-apple-darwin.tar.gz"
      sha256 "198e71e5d32b7f7b16627a2876071d7b7b4dd847233a8bae7caa0da0c71cbf30"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.23/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a16219cce79b90e61cc2af795c9d2e5e6e120837a1966adfabc1e892b9a03b92"
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
