class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.11/omni-aarch64-apple-darwin.tar.gz"
      sha256 "4d92392fbd89492d89a42d3b9904b4c50b2e0460d5635e08142350f43eed3f33"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.11/omni-x86_64-apple-darwin.tar.gz"
      sha256 "b8aa9aec2cd01ddb13ef052317264798bf5ec84e2ed014773ce7ed5af975c498"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.11/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "680aaee62c10f647d9985c60a1004648084adc10907b0d5336ce2fc49f9d3a9b"
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
