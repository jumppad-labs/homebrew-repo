
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.7.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.7.0/jumppad_0.7.0_darwin_x86_64.zip"
    sha256 "73a83292abcb8f38d38ede7239b3d0c93fc0dae0ee2e87c2a83787f7020378a9"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.7.0/jumppad_0.7.0_darwin_arm64.zip"
    sha256 "103b93d079594e13557d49489204a59378b4e6a41572bdd4f57bf1c8a02fe981"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.7.0/jumppad_0.7.0_linux_x86_64.tar.gz"
    sha256 "b64245d77f615eb75f5a19b3d6ee06641a18ec66a63afad2ab2ff9662fd642c5  /jumppad"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.7.0/jumppad_0.7.0_linux_arm64.tar.gz"
    sha256 "4e73bbbedf65068a16b8167c1a82a1d5f1967e2289acb27ea292438dbea04597"
  end

  def install
    bin.install "jumppad"
  end
end
