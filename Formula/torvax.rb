class Torvax < Formula
  desc "Git review of your diffs, like a movie"
  homepage "https://github.com/Munasco/torvax"
  version "0.8.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/Munasco/torvax/releases/download/v0.8.0/torvax-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "a174d71b1da29ed6ed64dc1a3e1ed9c2bc15036502e0eec513197ab04013d59f"
    end
  end

  def install
    bin.install "torvax"
  end

  test do
    system "#{bin}/torvax", "--version"
  end
end
