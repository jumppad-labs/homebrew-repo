
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.30.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.30.0/jumppad_0.30.0_darwin_x86_64.zip"
    sha256 "ba1002529df8a74b9a85d61f4f8cb9e714e744bf409ec58fb172b178c2149674"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.30.0/jumppad_0.30.0_darwin_arm64.zip"
    sha256 "2fe1e378d8780f18af2e6ab506ac714e70e611d52df3d633ca4196086cb1b9a7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.30.0/jumppad_0.30.0_linux_x86_64.tar.gz"
    sha256 "f506dbbf284a91adb2b21ee0b7ec750bcd280f22ba6e6042ef0e0e9579eeee31"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.30.0/jumppad_0.30.0_linux_arm64.tar.gz"
    sha256 "31760e652aed2c4596ea7dc084c0a67a9f2d417763d34284f33cf6a9d4cf9d2c"
  end

  def install
    bin.install "jumppad"
  end
end
