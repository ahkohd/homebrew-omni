class Omni < Formula
  desc "CLI for realtime transcription"
  homepage "https://github.com/ahkohd/omni"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.3/omni-aarch64-apple-darwin.tar.gz"
      sha256 "44eee491c7e056c194da4cc9a2c3588bfe1207558b7234a14cd6e4e3635bc685"
    end
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.3/omni-x86_64-apple-darwin.tar.gz"
      sha256 "35d320d1babd8a523803ed6cd61d1d451465a6cf2df1aea9464c7cb2a84cea69"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ahkohd/omni/releases/download/v0.1.3/omni-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf49602aad610a21b697da9aa38217da10d512ef73e40d24f29f26abf0913ff0"
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
