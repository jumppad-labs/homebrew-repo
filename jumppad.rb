# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.53"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.53/jumppad_0.5.53_darwin_x86_64.zip"
    sha256 "22b4d9ad30b86621a5f73e5bc23912a84d25094209fbced49eb0b2ab60e12e53"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.53/jumppad_0.5.53_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.53/jumppad_0.5.53_linux_x86_64.tar.gz"
    sha256 "2c62782274c8f58615b540cb2b80aa67b3ce5a8986293e7a4cb22b0fbe75912b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.53/jumppad_0.5.53_linux_arm64.tar.gz"
    sha256 "e024d52f6558cb2db8fdfc562c76720a97193d1ffae1aea96b66c3c663048f5c"
  end

  def install
    bin.install "jumppad"
  end
end
