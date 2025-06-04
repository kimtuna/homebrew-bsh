class Bsh < Formula
  desc "Blockchain Server Hosting CLI tool"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.4"
  
  on_macos do
    url "https://github.com/kimtuna/bsh/releases/download/v0.1.4/bsh-darwin-arm64.tar.gz"
    sha256 "58ebaefd605fe9405068c6799a4b73d7175a0c54525e2e657ab38d73f4b82531"
  end

  def install
    bin.install "bsh/bsh" => "bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 