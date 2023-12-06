# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.59"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.59/jumppad_0.5.59_darwin_x86_64.zip"
    sha256 "83703e71d18e214e5b6a1397b1697f735a83f75d01e7ce8feb9a40c538c5b924"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.59/jumppad_0.5.59_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.59/jumppad_0.5.59_linux_x86_64.tar.gz"
    sha256 "7fc584b91a79a07dd06c8253e2753913034b74ffb49e8b97ecfe2a8723545815"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.59/jumppad_0.5.59_linux_arm64.tar.gz"
    sha256 "0918ce2b7e1a1f35e4515507f9c65b32dca6b8f500844c2811885d60f5387d8b"
  end

  def install
    bin.install "jumppad"
  end
end
