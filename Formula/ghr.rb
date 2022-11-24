class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.2.1/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "da859efd04d93d02a904d122cd3cd2093f69f0faaa10db2bfc4099ab55f08b57"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.2.1/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "645ab2d3fcc276aedd079bc44689639b67f68625b78d32d28f709b9169dca319"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.2.1/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2b9d3449b655f044f12067036aee8a051a3ce94004f7e5a4b15a56b15900cf2"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.2.1/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b0d56e5a88bec642b88a4a99ee0cd406f8f9f1d81889250cb70b5d46ffe976e"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
