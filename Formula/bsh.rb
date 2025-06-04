class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.4"
  
  on_macos do
    url "https://github.com/kimtuna/bsh/releases/download/v0.1.4/bsh-darwin-arm64.tar.gz"
    sha256 "566462f87613c01d71018306902e5d063e7dc1f2fb623b78d0d16a0981f4a1f5"
  end

  def install
    bin.install "bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 