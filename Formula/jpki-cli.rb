class JpkiCli < Formula
  desc "Read certificates, sign and verify documents using your JPKI card"
  homepage "https://github.com/siketyan/jpki-rs"
  version "0.2.2"
  license "LGPL-2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.2/jpki-cli-x86_64-apple-darwin.tar.gz"
      sha256 "170d797be55c58fa48a055a02f743e4072b75d11975ebdc3c0beb535bdcde547"
    else
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.2/jpki-cli-aarch64-apple-darwin.tar.gz"
      sha256 "98ac1342e52aa1eff2583b2544bd1dc4f992ba1c6293b0fa59e59a65a750747c"
    end

    def install
      bin.install "jpki-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.2.2/jpki-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "63c8c2e06e6060cbb7eafc15ed010ce605018c7c34b9d42347ccb0666c966447"

      def install
        bin.install "jpki-cli"
      end
    end
  end

  test do
    system "#{bin}/jpki-cli", "-V"
  end
end
