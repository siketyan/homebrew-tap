class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.10/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "c85e127094a10313ebf3743dd064d0fb82605619980dfc1acf913e56597b4778"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.10/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "b5aa9c2e906f3d861d4bd81b54854ebc3ceab76cc50ac141d15ccbfcd753257a"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.10/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bab6da8424a8d6efc76e7436fad3d2a286a9fb84b75c4b581d0111ebfb4d9478"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.10/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "38d9997918ad5aea62110ef06626f82701de9843df2ba8894ef94a948953fe58"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
