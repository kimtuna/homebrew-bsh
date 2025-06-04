class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.4"
  
  on_macos do
    url "https://github.com/kimtuna/bsh/releases/download/v0.1.4/bsh-darwin-arm64.tar.gz"
    sha256 "213c873a240a7bdbefca069294654c7871c02f0dbe7e5bd3be8e5a60cd2c43da"
  end

  def install
    bin.install "brew-bsh" => "bsh"
    chmod 0755, bin/"bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 