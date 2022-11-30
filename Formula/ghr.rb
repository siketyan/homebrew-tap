class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.2.3/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "b39b7ae79a041c729cfa7354a6e5e5540226578f499e119a65460cbeaffa13b9"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.2.3/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "dd1b16a5a0f955853077d93a4e8a321a8299f08701a896f9d2a9f7cd05732e6d"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.2.3/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6abcb6f760dedde124d417800fc0ff85c6d8f491fe155bcbe22f8f444f462865"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.2.3/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e027b79c71d9a8162e47d032df7213d1b373ed0b5acfc65e4b59f282e323f7f"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
