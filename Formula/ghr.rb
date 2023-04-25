class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.8/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "924922656cb11ef1172066a50c44f6b56b9ae0c6964ef29f06a2fde18ad40822"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.8/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "ef92805ca4272af7bfce83f49ba92867ffb0562d8d52bb96eb48672d7a31f51e"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.8/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72a2f8b795a056ecccfe8c59de6a481b6f4759a2282f272c3e81813f18cbf014"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.8/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "939ac4d89b14798101eff31174beb6f9ac3e7c42296228e6813302e57b726a90"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
