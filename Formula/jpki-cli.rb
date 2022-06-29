class JpkiCli < Formula
  desc "Read certificates, sign and verify documents using your JPKI card"
  homepage "https://github.com/siketyan/jpki-rs"
  version "0.2.1"
  license "LGPL-2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.1/jpki-cli-x86_64-apple-darwin.tar.gz"
      sha256 "5c5321b1e7346a26fcccc5a3a51c7ab4088f44b8aeac9319a9161ea2f626d4dd"
    else
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.1/jpki-cli-aarch64-apple-darwin.tar.gz"
      sha256 "279543497388af211340abf8b5ea0d1c4a97cdbc94468716d4385c3c6eca5fe9"
    end

    def install
      bin.install "jpki-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.1/jpki-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3e90cae6c34b2db91808c37bcb4fd2fe34795d719f96e7e41a962821b4c99a8"

      def install
        bin.install "jpki-cli"
      end
    end
  end

  test do
    system "#{bin}/jpki-cli", "-V"
  end
end
