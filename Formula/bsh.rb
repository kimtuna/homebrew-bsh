class Bsh < Formula
  desc "Blockchain Server Hosting CLI"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.3"
  url "https://github.com/kimtuna/bsh/releases/download/v0.1.3/bsh-darwin-arm64.tar.gz"
  sha256 "5acbd55a4bbef76d7fea3792d3a3b397f24c2efc3cbb8b95f0bcf7916cbbf64f"
  license "MIT"

  def install
    bin.install "bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 