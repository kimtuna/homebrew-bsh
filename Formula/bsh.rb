class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.4"
  
  on_macos do
    url "https://github.com/kimtuna/bsh/releases/download/v0.1.4/bsh-darwin-arm64.tar.gz"
    sha256 "370045f72533d87e89311e595c32f5b3da69a44728cb75030c6575d9cf0ea9e4"
  end

  def install
    bin.install "bsh" => "bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 