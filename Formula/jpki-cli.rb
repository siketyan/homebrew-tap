class JpkiCli < Formula
  desc "Read certificates, sign and verify documents using your JPKI card."
  homepage "https://github.com/siketyan/jpki-rs"
  version "0.1.8"
  license "LGPL-2.1"

  on_macos do
    url "https://github.com/siketyan/jpki-rs/releases/download/0.1.8/jpki-cli-x86_64-apple-darwin.tar.gz"
    sha256 "60d7ce4f44789b1f3733e9a0e8d9d0b4cbf83564f09e9ff01ecae7ec89b2071d"

    def install
      bin.install "jpki-cli"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/siketyan/jpki-rs/releases/download/0.1.8/jpki-cli-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9d969822546cffc18df3e55ef16a82dfa72b48025b93e6f1adf219326621d434"

      def install
        bin.install "jpki-cli"
      end
    end
  end

  test do
    system "#{bin}/jpki-cli -V"
  end
end
