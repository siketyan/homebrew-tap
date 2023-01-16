class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.0/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "24906ffd49b4f5d66a87eee9ab5d6ba51ce2e9ff075d3d19095ac2095243a0ad"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.0/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "4d7e91cf62848211cbe13852e204ded9d8935460c48b23bf6616a7e85bcf65c7"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.0/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f090e9657441f056c66bcf452a2d45089692d4341d1d8c078e83a9806bbd10c"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.0/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a13c858dc15db9bd0d2cbb2a259dc6a063afcc0280a43c9a9d1b8ab1187f63e"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
