class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.35"
  license "PolyForm-Shield-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.35/omni-aarch64-apple-darwin.tar.gz"
      sha256 "54ee56d13271c7be15215595506e423c77746fe27e0620e5cec90bec185593fd"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.35/omni-x86_64-apple-darwin.tar.gz"
      sha256 "a0413c7162feff828c929938c8b82cfcb69aca18cd43ff55d03913b6d1216474"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.35/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "28114da0b753e6439443df0bea2e07c980a04b138a6458b2e705f679a2346150"
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
