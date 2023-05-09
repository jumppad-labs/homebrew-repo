# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.17"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.17/jumppad_0.5.17_darwin_x86_64.zip"
    sha256 "0c2fa7b125d8e13d0f1d9b0d64409d3b9821636c0bbb519d21f90b92cd225bd0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.17/jumppad_0.5.17_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.17/jumppad_0.5.17_linux_x86_64.tar.gz"
    sha256 "f637813b1bf5e0ba41224ff2b54889cd762007a05c5ec52061e9091dcddaa385"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.17/jumppad_0.5.17_linux_arm64.tar.gz"
    sha256 "3b7382e0800f543814b6dbad35725a1e66ed4a8c71aa29a451eae9a6b8646b3d"
  end

  def install
    bin.install "jumppad"
  end
end
