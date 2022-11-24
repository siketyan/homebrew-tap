class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://api.github.com/repos/siketyan/ghr/releases/assets/85795570"
      sha256 "0aa2c77587ea4866ddb4f22b701ef03c10fe75446dd2df02e30a209bd5872646"
    else
      url "https://api.github.com/repos/siketyan/ghr/releases/assets/85795544"
      sha256 "50651da040dae5846b0d784296c5d6b3b803a6ec0cca35e3ca0c05b9e851fce1"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://api.github.com/repos/siketyan/ghr/releases/assets/85795504"
      sha256 "7106f9b102ba2a6d433157bee235c3666d0647950920daafdbc5cbb70f44dca0"
    else
      url "https://api.github.com/repos/siketyan/ghr/releases/assets/85795545"
      sha256 "52b9cd5136108358defc1aba531c5ec865dca2db391882cbc275f6af917dd6c6"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
