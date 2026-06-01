class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.37"
  license "PolyForm-Shield-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.37/omni-aarch64-apple-darwin.tar.gz"
      sha256 "2f64c1280724593a53f68d417c3c56a5396b6c709dd7baf7d6ee312cf0bff6bd"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.37/omni-x86_64-apple-darwin.tar.gz"
      sha256 "c9dd007a897f129e1665a6098e1a0213d17c9dd21b460707ac94558f74e9afd9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.37/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a662e3d3a8e7574a289f9bfa216f328418190ea428e919fe068f8dae59d64661"
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
