class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.2.2/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "0a354bf855fa40abaacd12b065a4a570c39bdc9e5bb15f7943f91e0fb29da66d"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.2.2/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "8150a036c645b16e57141bc139b98f3aeb309a01732b303c09999fa309e99487"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.2.2/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55bab5e0a0d03cfb983ffd43747f150cfdc438f501daff67a4bc41b7f16d0c0c"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.2.2/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8ec7af469aa5f2872709997ac0432d36ffa0855e3725faf961840e73fe78bb64"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
