class Torvax < Formula
  desc "Git review of your diffs, like a movie"
  homepage "https://github.com/Munasco/torvax"
  version "0.8.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/Munasco/torvax/releases/download/v0.8.0/torvax-v0.8.0-aarch64-apple-darwin.tar.gz"
    end
    on_intel do
      url "https://github.com/Munasco/torvax/releases/download/v0.8.0/torvax-v0.8.0-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Munasco/torvax/releases/download/v0.8.0/torvax-v0.8.0-aarch64-unknown-linux-gnu.tar.gz"
    end
    on_intel do
      url "https://github.com/Munasco/torvax/releases/download/v0.8.0/torvax-v0.8.0-x86_64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "torvax"
  end

  test do
    system "#{bin}/torvax", "--version"
  end
end
