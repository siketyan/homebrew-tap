class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.2/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "5e33f0dbd7430dfd60b83ee9b70fb9852975c0fd23845160882099db4af87b74"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.2/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "f497157b5268a192155556b4e056276343ff680eaca0786715655d8f48192d62"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.2/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d6d270acaab0cca97ec45cdf771847018365e8fca11c12ae970fc7624f6d76e3"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.2/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e1b1d7c82ad03defbbac8331c0e54e95d9385a152c5313128afc1a82ebad2fb2"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
