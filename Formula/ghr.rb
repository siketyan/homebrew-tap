class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.6/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "02767aaab38d88551fee836176eb39116697de0ac042dea86b687e6d4f71b123"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.6/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "5348906d35b52c1a9c2a8d71494ca401bbe1b860f62827321c6930495c25eeb3"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.6/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77c8443bc77f22b0bf802c57aaec62da561dd086da0eda125fa9f0ac9f9d05d7"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.6/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e0034351f5b058ea64c153bf8c25181d335e1928b4554e257ad54d6270e3b03"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
