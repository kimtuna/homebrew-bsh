class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.4"
  
  on_macos do
    url "https://github.com/kimtuna/bsh/releases/download/v0.1.4/bsh-darwin-arm64.tar.gz"
    sha256 "9e1857ae1e1b80fd7689ffa6fefd2ba9c3cc7533b511bdea11e43cdc7b7f1f1c"
  end

  def install
    bin.install "brew-bsh" => "bsh"
    chmod 0755, bin/"bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 