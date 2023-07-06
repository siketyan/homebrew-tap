class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.9/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "c3b14d1e88cea318a7bd2dcbd0baef7507a18568af9a1a1dce708abdfbce6006"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.9/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "e9d9e6aca124ff415ddb81897d0de7cb65dba23005f910cdbbd029e0e104a948"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.9/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8964ac6fe4c3c0e4aa451a1aa62ac3cb86116f43e0bc16234261f6b001ec7844"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.9/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf35f2a22f821203838f852f0c7f0732815911638b9ef0555acd4f1a27640383"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
