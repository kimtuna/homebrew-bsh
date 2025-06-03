class Bsh < Formula
  desc "Blockchain Server Hosting CLI"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.3"
  url "https://github.com/kimtuna/bsh/releases/download/v0.1.3/bsh-darwin-arm64.tar.gz"
  sha256 "6f2e3301d4e5e066f39c7a311c590595986ef80cbd9e1cc30aca86a3deb0d465"
  license "MIT"

  def install
    bin.install "bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 