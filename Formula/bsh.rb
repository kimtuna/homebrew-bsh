class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.4"
  
  on_macos do
    url "https://github.com/kimtuna/bsh/releases/download/v0.1.4/bsh-darwin-arm64.tar.gz"
    sha256 "4a4a101f9a0e8c716b45a6d57c41ebc719dc6b2e4109cae0f5d5d9a9e25a952b"
  end

  def install
    bin.install "bsh"
    chmod 0755, bin/"bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 