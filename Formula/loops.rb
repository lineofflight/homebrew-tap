# Rendered from packaging/homebrew/loops.rb in lineofflight/loops on each release.
class Loops < Formula
  desc "Open loops ledger for coding agents"
  homepage "https://lineofflight.dev/loops/"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lineofflight/loops/releases/download/v0.1.0/loops-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "ef71fc2a40464f6cba123558fee10777c4a555ae84c5b2567b8feb98d324fbc5"
    end
    on_intel do
      url "https://github.com/lineofflight/loops/releases/download/v0.1.0/loops-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d69a3f8f68b26c600c8633e908c6e9a664e0582fcb269301b28fb278da212793"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lineofflight/loops/releases/download/v0.1.0/loops-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7abbd09a3d8a1c603429b277ae572ae910ed8e034348a60c6ec56d1a16723e2a"
    end
    on_intel do
      url "https://github.com/lineofflight/loops/releases/download/v0.1.0/loops-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d01dab9d1ae7d21ea5b1447ec11b8fdce71b6bb1bf24bb3c17e9c0aa18cebbd"
    end
  end

  def install
    bin.install "loops"
  end

  test do
    assert_match "1. Check the formula", shell_output("#{bin}/loops add 'Check the formula'")
  end
end
