class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.1/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "56b9357d307df3ca6ebe5c388b3a33db498167aa46588059e5bc4edb75182d33"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.1/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "d5545dc8800cf76174f4b2eea597aafe2f06871ca2c7a76eaf1f4ad6b2bfe2f0"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.1/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1b3df7fa17473e086990fd471c82645cdd94ecb3859b2f8bd9b3ffa7ddc7815e"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.1/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ebaa03c43d0f3f939363bb3597314aba47419bb6140fbbd846f9f9d57bfb5ac7"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
