
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.29.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.29.0/jumppad_0.29.0_darwin_x86_64.zip"
    sha256 "a3fb3d980b4a35fc7cfafd7e11ae2c81717693b4486735f2c7d950c19e6c1aa9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.29.0/jumppad_0.29.0_darwin_arm64.zip"
    sha256 "8598a87953f97b652842b80e6d4e48530f560b0545cf0421899e20028ab8c69c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.29.0/jumppad_0.29.0_linux_x86_64.tar.gz"
    sha256 "66c735ecaa54298fb010238c777b9747de18dfbb6a3abb02766fa2e6cd2ca0b5"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.29.0/jumppad_0.29.0_linux_arm64.tar.gz"
    sha256 "91400a0b1b4cafd894631b0b51b63c6057b80d1bc993a503938ab19f33c9ebfe"
  end

  def install
    bin.install "jumppad"
  end
end
