class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.4.1/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "076b4d17f63ffe11a26e9a29b0e02a4b6c2d7a616aeca106f2b85d0021dfdb7b"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.4.1/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "6a26ef028e5330d89323cdc483a628b0887ae845be87a107d1533ca557115eb4"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.4.1/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81d1cb7d3deecb0c3fdf58e02c4f8eb09e36d156ee99ecbd7659f6a2834773a6"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.4.1/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db5f0fcbc99ea5aee657aed87ac88aba50794f7b720e6b25457628609d19736a"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
