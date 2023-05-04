# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.10/jumppad_0.5.10_darwin_x86_64.zip"
    sha256 "c629fde8a21e5a5d906af082b56cd1ebdb71b61820fa4c64c4be37cfd21cff62"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.10/jumppad_0.5.10_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.10/jumppad_0.5.10_linux_x86_64.tar.gz"
    sha256 "471f0e940aa7c84e993ef832dc4dbda34febf2982dbcab6bc4e69b605193941b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.10/jumppad_0.5.10_linux_arm64.tar.gz"
    sha256 "f2cfbd1274905f7bc0804cf859a88e0687109e8990fc269ffd37905a7dda0cf6"
  end

  def install
    bin.install "jumppad"
  end
end
