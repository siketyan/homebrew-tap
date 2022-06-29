class JpkiCli < Formula
  desc "Read certificates, sign and verify documents using your JPKI card"
  homepage "https://github.com/siketyan/jpki-rs"
  version "0.2.0"
  license "LGPL-2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.0/jpki-cli-x86_64-apple-darwin.tar.gz"
      sha256 "53bf9e5414e582443f4c69b91de025226e79039684edbe773f8d74d57df495ae"
    else
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.0/jpki-cli-aarch64-apple-darwin.tar.gz"
      sha256 "f5273059d2e10e16fcacfdb9ca5d1a1b6724a2b6bf6a257a05bdd86ecfb8e8f2"
    end

    def install
      bin.install "jpki-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.0/jpki-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7d9982f87521d3062799073b064d6950dfb88f849237898c9afb6b6f8dd7e12"

      def install
        bin.install "jpki-cli"
      end
    end
  end

  test do
    system "#{bin}/jpki-cli", "-V"
  end
end
