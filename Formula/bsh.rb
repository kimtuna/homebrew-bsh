class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.4"
  
  on_macos do
    url "https://github.com/kimtuna/bsh/releases/download/v0.1.4/bsh-darwin-arm64.tar.gz"
    sha256 "9f48d95a8cb1a641db524d2770caf59f909ac3c8424be398c03118751c8968dd"
  end

  def install
    bin.install "bsh"
    chmod 0755, bin/"bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 