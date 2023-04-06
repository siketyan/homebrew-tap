class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.5/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "2cde28c2993af3c1c128b1758eb895897b9557c1b7586fe88540109f52fbf3f5"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.5/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "80e4d3240e1a120236b22b4298f21d39feddebc081835e403da12363be4ec5ee"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.5/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d77959f9788f198c41f10d4610d6868cc864db77073ad4499dc439daa4110330"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.5/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4f9b8fa5d5d2381a9175570fe91b80f3ed6f4e56d9abf61ede153e49dc4d593"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
