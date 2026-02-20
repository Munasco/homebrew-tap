class Torvax < Formula
  desc "Git review of your diffs, like a movie"
  homepage "https://github.com/Munasco/torvax"
  version "0.1.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/Munasco/torvax/releases/download/v0.1.0/torvax-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0d6c946d61f7bae042661671bac10bea8ffd775a74fce6cacc335748e1d888be"
    end
  end

  def install
    bin.install "torvax"
  end

  test do
    system "#{bin}/torvax", "--version"
  end
end
