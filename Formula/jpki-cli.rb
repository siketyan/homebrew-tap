class JpkiCli < Formula
  desc "Read certificates, sign and verify documents using your JPKI card"
  homepage "https://github.com/siketyan/jpki-rs"
  version "0.1.8"
  license "LGPL-2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.1.8/jpki-cli-x86_64-apple-darwin.tar.gz"
      sha256 "e84fe854624afe2ec10eb9620c2d0f8a57f9d048d7f4d9d3ad31c14e5e750e26"
    else
      url "https://github.com/siketyan/jpki-rs/releases/download/0.1.8/jpki-cli-aarch64-apple-darwin.tar.gz"
      sha256 "bea9c51b3ebade43d76ae1c39a30f7e2c703f97330d1c7432c6ed53a58317377"
    end

    def install
      bin.install "jpki-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.1.8/jpki-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2b11ceebb5b19070b02f850b5665299de33fa20f8e145a597cd0d1e5e79b050d"

      def install
        bin.install "jpki-cli"
      end
    end
  end

  test do
    system "#{bin}/jpki-cli", "-V"
  end
end
