# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.24"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.24/jumppad_0.5.24_darwin_x86_64.zip"
    sha256 "e341257ef24eb582ac808de66ffa4814f28a5aabdada4c1c68acd0bdac2c85d0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.24/jumppad_0.5.24_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.24/jumppad_0.5.24_linux_x86_64.tar.gz"
    sha256 "2f1a696fcec4cc90eeabc66c5c19ccdf6ec3f7cc791ef04b63c684ec5dcbec65"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.24/jumppad_0.5.24_linux_arm64.tar.gz"
    sha256 "0cd4971e07d953c8faa68ec9e4374147af131714f523a317c9fc95ebcda9c668"
  end

  def install
    bin.install "jumppad"
  end
end
