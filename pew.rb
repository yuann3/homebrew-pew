class Pew < Formula
  desc "A lightweight CLI tool for dumping your codebase into a single file, perfect to work with LLMs "
  homepage "https://github.com/yuann3/pew"
  version "0.1.2"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuann3/pew/releases/download/v0.1.2/pew_0.1.2_darwin_arm64.tar.gz"
      sha256 "7dc74327a2266c29bc6457f5621548539cf22143a5aba0bcca4da7b59e5d75d3" 
    else
      url "https://github.com/yuann3/pew/releases/download/v0.1.2/pew_0.1.2_darwin_amd64.tar.gz"
      sha256 "ddd184e7343389d9ad8e9901e87b550ba7341422fec4254d7006fa7d2fa84321"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yuann3/pew/releases/download/v0.1.2/pew_0.1.2_linux_arm64.tar.gz"
      sha256 "c235a72ebdd7e814e0942f5f3030a5919656755972c46ee235373563966ab8e6"
    else
      url "https://github.com/yuann3/pew/releases/download/v0.1.2/pew_0.1.2_linux_amd64.tar.gz"
      sha256 "7136b531d90fa3f922ec8d9de742219de8e0f3c76ab73287ce70e609a7a54c99"
    end
  end
  
  def install
    bin.install "pew_0.1.2_#{OS.mac? ? 'darwin' : 'linux'}_#{Hardware::CPU.arm? ? 'arm64' : 'amd64'}" => "pew"
  end

  test do
    system "#{bin}/pew", "-h"
  end
end
