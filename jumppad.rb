# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.47"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.47/jumppad_0.5.47_darwin_x86_64.zip"
    sha256 "897ae8e2258d4b38ec6a4aac01cd0794b97eb24f83984d0ab967194265899f10"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.47/jumppad_0.5.47_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.47/jumppad_0.5.47_linux_x86_64.tar.gz"
    sha256 "35893d859dab64dc51571932bf965f1a4d03e4f1a7ab892d2c56ed4667b9291e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.47/jumppad_0.5.47_linux_arm64.tar.gz"
    sha256 "1cd2a305689dfd5ef0e413b5ece81d87af0e3219823ea9712ad2d702e192cb7a"
  end

  def install
    bin.install "jumppad"
  end
end
