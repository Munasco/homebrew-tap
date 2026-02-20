class Gitlogue < Formula
  desc "Git review of your diffs, like a movie"
  homepage "https://github.com/Munasco/gitlogue"
  version "0.8.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/Munasco/gitlogue/releases/download/v0.8.0/gitlogue-v0.8.0-aarch64-apple-darwin.tar.gz"
    end
    on_intel do
      url "https://github.com/Munasco/gitlogue/releases/download/v0.8.0/gitlogue-v0.8.0-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Munasco/gitlogue/releases/download/v0.8.0/gitlogue-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
    end
    on_intel do
      url "https://github.com/Munasco/gitlogue/releases/download/v0.8.0/gitlogue-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "gitlogue"
  end

  test do
    system "#{bin}/gitlogue", "--version"
  end
end
