class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.11/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "29d3689f052a9cde9a21f99e1f73c45909712cf130f44d453a1490b9a50be7c9"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.11/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "bdf8c1b0695632eecd2b6ce9ebb3d4416163624c31fbe858b5134966207c4444"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.11/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "038825df6e7ac306ed5506481edf0f66433942e238e8bc5521feac2c76be88f3"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.11/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "677e6582d25bc3ba9b39a9459635dd24276f978936dbfdaab6a536dc445ecab9"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
