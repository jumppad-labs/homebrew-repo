# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.23"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.23/jumppad_0.5.23_darwin_x86_64.zip"
    sha256 "1079438ec7c7ac7c352cc623d06b72ce7c08a2a836d0ffe407293166a8d49e5c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.23/jumppad_0.5.23_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.23/jumppad_0.5.23_linux_x86_64.tar.gz"
    sha256 "5279e2d4e087423ea9d152dbf8202efa159f2ca3f34463afb96dd1de61e1eb00"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.23/jumppad_0.5.23_linux_arm64.tar.gz"
    sha256 "dab2636bf18dac88fa0d9541006f0cdb6bcc6571cc03e19ad129e72c5f90a4dc"
  end

  def install
    bin.install "jumppad"
  end
end
