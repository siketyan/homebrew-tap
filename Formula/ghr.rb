class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.7/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "5e19907a54cfb2c5cbd0dccc5a0a9594527f0324df69e177d6bde3a63e863863"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.7/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "ca86ea029cef1b386bd49bb847b3ac5f150c327b3a53610cacff1b3b4a77e6a4"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.7/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46e05a48bcf965082918ab59b74098224daa8987127b30d09775ef710e26f95a"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.7/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0895a602adea9eb77de459f2ca43f68d8f9df0f7663b6459c7dc8076a394804"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
