class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.14/omni-aarch64-apple-darwin.tar.gz"
      sha256 "2eeadef5091c499e3e0205cb52dc90478c17a938408c26f259fe5cf43f43dbd3"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.14/omni-x86_64-apple-darwin.tar.gz"
      sha256 "8ca7833ec375dd84cba888eae31bd88449bcd8e8df1b74440d400c14629f0d4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.14/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ae7e891b2b6c485789d011fe5f394c42dba049d395b8f6b0021f539f429ac7d"
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
