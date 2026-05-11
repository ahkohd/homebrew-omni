class Omni < Formula
  desc "Real-time CLI transcription tool"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.16/omni-aarch64-apple-darwin.tar.gz"
      sha256 "9c7112d89450477cdf052fe93bf8f15a8af1fc1e6ee7866cec8aeae18c7232e7"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.16/omni-x86_64-apple-darwin.tar.gz"
      sha256 "8d6acaa274a4a3848bdad22ef61aeeef96070608926ce957a9217d564ef4f0b7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.16/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cb3d78aef64bfaff164e2d7ee3911bb5a8ca7c181649123fd47caa843c475f62"
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
