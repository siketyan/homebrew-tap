class Ghr < Formula
  desc "Yet another repository management with auto-attaching profiles"
  homepage "https://github.com/siketyan/ghr"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.3/ghr-x86_64-apple-darwin.tar.gz"
      sha256 "b4b53e45affb863103766bd7afcaf5efd1b956981f454080992f352bfe32c4bf"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.3/ghr-aarch64-apple-darwin.tar.gz"
      sha256 "cfb69cdcb0690064d69b55954a2deda20c13fabed6e0a5add9168893d56d161c"
    end

    def install
      bin.install "ghr"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/ghr/releases/download/v0.3.3/ghr-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "412a31d275a7a24355930fb7f71d3d0827ebdebf5e7cc566a08183d1eaa49618"
    else
      url "https://github.com/siketyan/ghr/releases/download/v0.3.3/ghr-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d40a0e0bab55e5f87e6aa124c6dce81d7cecdfcc558a268cea85bb7770a81ddd"
    end

    def install
      bin.install "ghr"
    end
  end

  test do
    system "#{bin}/ghr", "version"
  end
end
