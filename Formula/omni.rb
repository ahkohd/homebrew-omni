class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.31"
  license "PolyForm-Shield-1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.31/omni-aarch64-apple-darwin.tar.gz"
      sha256 "4815564ca81bdf6b470b870a33f35f1fc971405e91c785fa8deb05be0faa6e82"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.31/omni-x86_64-apple-darwin.tar.gz"
      sha256 "ccad14531defb76f4c0cca92c75f38eeca022492abe6ef48f1274f57e6aad0a8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.31/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a36fe6662be8191c9ade1a3101be8e13c88e626274f0366e8a35361b86cc38b"
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
