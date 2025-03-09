class Pew < Formula
  desc "A lightweight CLI tool for dumping your codebase into a single file, perfect to work with LLMs "
  homepage "https://github.com/yuann3/pew"
  version "0.1.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuann3/pew/releases/download/v0.1.1/pew_0.1.1_darwin_arm64.tar.gz"
      sha256 "2724698d7700f97556fa5a98d0a974aa2da48080e6d2f2010c04bcaa825d8896" 
    else
      url "https://github.com/yuann3/pew/releases/download/v0.1.1/pew_0.1.1_darwin_amd64.tar.gz"
      sha256 "f810cf0bb9d27621095fe11d708ae941c8e55bdac1eab547058ba5b2f259bf08"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yuann3/pew/releases/download/v0.1.1/pew_0.1.1_linux_arm64.tar.gz"
      sha256 "8d5814cbb94e37a1e6a0cd89ef4c9a3825e2b43a1f3baea52ddca8f4f0266c9f"
    else
      url "https://github.com/yuann3/pew/releases/download/v0.1.1/pew_0.1.1_linux_amd64.tar.gz"
      sha256 "2e935ba3ece418183f11941d688e090d783b188f88a9059bf11ff872e6518380"
    end
  end
  
  def install
    bin.install "pew_0.1.1_#{OS.mac? ? 'darwin' : 'linux'}_#{Hardware::CPU.arm? ? 'arm64' : 'amd64'}" => "pew"
  end

  test do
    system "#{bin}/pew", "-h"
  end
end
