# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.8"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.8/jumppad_0.5.8_darwin_x86_64.zip"
    sha256 "a7f4860d8f3fa9671682f8722752abb2ac4cc4980bcf3238ca88f4364e1a66a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.8/jumppad_0.5.8_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.8/jumppad_0.5.8_linux_x86_64.tar.gz"
    sha256 "95f6fdfa44b9ecb8dd41d63c2c2b50b09670a26791188bea2b4afb859f8d1d47"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.8/jumppad_0.5.8_linux_arm64.tar.gz"
    sha256 "d6cbb7565ff24df674ba98ed8ee0b1193443735dc4621a0e3adf410dfbda8b03"
  end

  def install
    bin.install "jumppad"
  end
end
