class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kimtuna/bsh/releases/download/v0.1.5/bsh-darwin-arm64.tar.gz"
      sha256 "c9229b5f436d0040fc832185ec000db9bcbc8da266a758c041d87f864be70ac9"
    end
  end

  def install
    bin.install "bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 