class Pew < Formula
  desc "A lightweight CLI tool for dumping your codebase into a single file, perfect to work with LLMs "
  homepage "https://github.com/yuann3/pew"
  version "0.1.1"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuann3/pew/releases/download/v0.1.0/pew_0.1.0_darwin_arm64.tar.gz"
      sha256 "f136873687dbdca9a0433367065a342ce04de8153799dc8c51e4c34b172ddf2d" 
    else
      url "https://github.com/yuann3/pew/releases/download/v0.1.0/pew_0.1.0_darwin_amd64.tar.gz"
      sha256 "f1bc987a9e148a5f6dd3f44aa5b4b2bc8754fd8da0b12ed69d27d8106d7deedd"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yuann3/pew/releases/download/v0.1.0/pew_0.1.0_linux_arm64.tar.gz"
      sha256 "f2ed8b262eceb64704a1bfefd1166bcb921cfa38be20421a32e4d3becf8243f1"
    else
      url "https://github.com/yuann3/pew/releases/download/v0.1.0/pew_0.1.0_linux_amd64.tar.gz"
      sha256 "02cdf993c9b7bd00aa8b581c54caac2cba092aa9285831d49db73e98becdfe6e"
    end
  end
  
  def install
    bin.install "pew_0.1.0_#{OS.mac? ? 'darwin' : 'linux'}_#{Hardware::CPU.arm? ? 'arm64' : 'amd64'}" => "pew"
  end

  test do
    system "#{bin}/pew", "-h"
  end
end
