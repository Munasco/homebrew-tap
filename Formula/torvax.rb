class Torvax < Formula
  desc "Git review of your diffs, like a movie"
  homepage "https://github.com/Munasco/torvax"
  version "0.8.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/Munasco/torvax/releases/download/v0.8.0/torvax-v0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "512b03c4b0de3064ed83d42f06f76cfa3f88fb30d80e553fe9f0320feaeb412f"
    end
  end

  def install
    bin.install "torvax"
  end

  test do
    system "#{bin}/torvax", "--version"
  end
end
