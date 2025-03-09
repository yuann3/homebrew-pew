class Pew < Formula
  desc "A lightweight CLI tool for dumping your codebase into a single file, perfect to work with LLMs "
  homepage "https://github.com/yuann3/pew"
  version "0.1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuann3/pew/releases/download/v0.1.0/pew_0.1.0_darwin_arm64.tar.gz"
      sha256 "fb49f5a143a24505fde6f9415633e2b338d0f3b5801a09dc154388070e31a571" 
    else
      url "https://github.com/yuann3/pew/releases/download/v0.1.0/pew_0.1.0_darwin_amd64.tar.gz"
      sha256 "fb49f5a143a24505fde6f9415633e2b338d0f3b5801a09dc154388070e31a571"
    end
  end
  
  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yuann3/pew/releases/download/v0.1.0/pew_0.1.0_linux_arm64.tar.gz"
      sha256 "606f9fe25d3d90204be572d33b5d4d6cfe9c524f4bb74b02e30195e09f499e21"
    else
      url "https://github.com/yuann3/pew/releases/download/v0.1.0/pew_0.1.0_linux_amd64.tar.gz"
      sha256 "606f9fe25d3d90204be572d33b5d4d6cfe9c524f4bb74b02e30195e09f499e21"
    end
  end
  
  def install
    bin.install "pew_0.1.0_#{OS.mac? ? 'darwin' : 'linux'}_#{Hardware::CPU.arm? ? 'arm64' : 'amd64'}" => "pew"
  end

  test do
    system "#{bin}/pew", "-h"
  end
end
