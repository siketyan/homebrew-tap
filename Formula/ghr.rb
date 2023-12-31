class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.4.0/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "f14ede2de28c07a200e9617f3f5693cf7ee5bee0a1dc6fac09549cfa05b13cca"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.4.0/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "cb2645d264be6be73cb3e71f1bcc66127bd769ae07ce135e29dff240389e9de3"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.4.0/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e74401533263de7aae3593b0323d444771ca6b3e1089007f856b5a308b1e769c"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.4.0/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0c2ff30d4e561beecb2f7d860263f7328285911038df68d884020601c8c35217"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
