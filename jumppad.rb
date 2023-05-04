# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.9/jumppad_0.5.9_darwin_x86_64.zip"
    sha256 "a41a82e3e7d2d5fd8244e635fb160d1cd48ceac8c17c1adec3cf2f5f59adc375"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.9/jumppad_0.5.9_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.9/jumppad_0.5.9_linux_x86_64.tar.gz"
    sha256 "238f054bccaf608c0580a25ebf73bc05d927663054cc100ea62282ebb6d3bed2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.9/jumppad_0.5.9_linux_arm64.tar.gz"
    sha256 "a14b15de211e1ff4177de032d1323854becd68542392bdfe1542f0f5a8914b3a"
  end

  def install
    bin.install "jumppad"
  end
end
