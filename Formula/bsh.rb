class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.4"
  
  on_macos do
    url "https://github.com/kimtuna/bsh/releases/download/v0.1.4/bsh-darwin-arm64.tar.gz"
    sha256 "f3b871129fbd10c8c285d25fbb98266b7cac68c5dfbd8df6b191fb842951df18"
  end

  def install
    bin.install "brew-bsh" => "bsh"
    chmod 0755, bin/"bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 