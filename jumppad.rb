
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.27.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.27.0/jumppad_0.27.0_darwin_x86_64.zip"
    sha256 "e77a475c1760088d9bc403135aeac2dbd65f8f1aaa852ab976cf0d0b37cf2124"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.27.0/jumppad_0.27.0_darwin_arm64.zip"
    sha256 "75f984955a8b72aa408318dac946ceb64878cc7c9dfba7406b4740eae570f47e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.27.0/jumppad_0.27.0_linux_x86_64.tar.gz"
    sha256 "801ae89831bb75a6ea74831da3894439da23a75789aac65e7759fe1354fe5fcf"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.27.0/jumppad_0.27.0_linux_arm64.tar.gz"
    sha256 "e0eaa7223bf22fb0d37a579ce291c4b26031c7c19d94c7b6fb17c10447b62c6c"
  end

  def install
    bin.install "jumppad"
  end
end
