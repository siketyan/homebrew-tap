class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.4/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "aab9b2dff0e76e09277fd4e0149cc37002a65c2346e36dbd6bfa1e346882f86b"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.4/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "9943b32136f01e1792d9e71a475367b4dfc965688f3fa3baed8542d28fede256"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.4/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96b9b35b81410fde4983f6e25cefac60199dee7378943d43b528d852dd3b7ac2"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.4/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd2e21d1cca7311b3831831b71912ae38fcb7aa429f1a2810efbf090d1e2cc94"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
