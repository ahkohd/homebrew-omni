class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.27"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.27/omni-aarch64-apple-darwin.tar.gz"
      sha256 "d9f1f7e055bb8b0fa54fb8713eef715524289f254812e5d041d65a386f61a2f5"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.27/omni-x86_64-apple-darwin.tar.gz"
      sha256 "58be1ea39b8d1b4e42a93eb95b3ca5512a48b65c5575490236452a046d7d31c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.27/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bec8c78480a652dd7a73c987a3b8123cf80b787127dbbb636eebeb18bcca1932"
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
