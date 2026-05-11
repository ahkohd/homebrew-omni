class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.17/omni-aarch64-apple-darwin.tar.gz"
      sha256 "ebd7d69972652f3ce3041dfb81c703279981effab979fb643b43f9e13022337b"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.17/omni-x86_64-apple-darwin.tar.gz"
      sha256 "b9bc6072e208820eb622018a474816099b81f399ea29ac56bd6c1e9fcc3b868c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.17/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0497086e072529c7ce0e37afb225632ab68c2c176826f5f6aad9833afc2d99b4"
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
