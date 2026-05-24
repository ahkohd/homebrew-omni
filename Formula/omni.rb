class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.28/omni-aarch64-apple-darwin.tar.gz"
      sha256 "c584b9d1f60d92147f742ddca16a76ca620763ab1feb7ac705ca668c955251db"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.28/omni-x86_64-apple-darwin.tar.gz"
      sha256 "750941a0ca8172501f3b55d2ac6a3e9aa276bf02338ee2ce078da935cf5afe92"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.28/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b61c76fad7fcf306c5a968e24d6cac50be1425e2752fd570f75ff1c4b775013"
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
