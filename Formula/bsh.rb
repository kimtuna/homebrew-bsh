class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kimtuna/bsh/releases/download/v0.1.5/bsh-darwin-arm64.tar.gz"
      sha256 "b44753217e1598c021649a403bf79cc479c8dbeec24aa9338ca615647a9a192c"
    end
  end

  def install
    bin.install "bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 