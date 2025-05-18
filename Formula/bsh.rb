class Bsh < Formula
  desc "Blockchain Server Hosting CLI"
  homepage "https://github.com/kimtuna/bsh"
  version "0.1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kimtuna/bsh/releases/download/v#{version}/bsh-darwin-arm64.tar.gz"
      sha256 "464c5c85fae1506ebeaa4d11abea104276064f6f6565bf6647ec6e5c8e4aa78b"
    else
      url "https://github.com/kimtuna/bsh/releases/download/v#{version}/bsh-darwin-amd64.tar.gz"
      sha256 "YOUR_SHA256_HERE"  # 실제 빌드 후 업데이트 필요
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kimtuna/bsh/releases/download/v#{version}/bsh-linux-arm64.tar.gz"
      sha256 "YOUR_SHA256_HERE"  # 실제 빌드 후 업데이트 필요
    else
      url "https://github.com/kimtuna/bsh/releases/download/v#{version}/bsh-linux-amd64.tar.gz"
      sha256 "YOUR_SHA256_HERE"  # 실제 빌드 후 업데이트 필요
    end
  end

  def install
    bin.install "bsh"
  end

  test do
    system "#{bin}/bsh", "--version"
  end
end 