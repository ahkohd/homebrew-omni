class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.32"
  license "PolyForm-Shield-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.32/omni-aarch64-apple-darwin.tar.gz"
      sha256 "a968e893a150ddd5ff6cd881866969821c31c98fc3d0fd378a4bdc83d7a3a4be"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.32/omni-x86_64-apple-darwin.tar.gz"
      sha256 "f3de126b4fbfdab879c8760eb9da40d6da4b6e6206c003e224af6dd8f5c59d63"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.32/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a04b583bba82bba880bf0c9354f3e8d75410275b69883079f7af8870ee47aec6"
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
