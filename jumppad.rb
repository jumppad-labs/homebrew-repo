# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.46"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.46/jumppad_0.5.46_darwin_x86_64.zip"
    sha256 "bef270f1e5cbb57edd3eabf0d292a1e9edd2ad9bb91cb16c0dbeb001acefc96e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.46/jumppad_0.5.46_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.46/jumppad_0.5.46_linux_x86_64.tar.gz"
    sha256 "4ea23868d0502e86a989cdc7d027fbd0005a8bed95dee21eca942369684beb98"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.46/jumppad_0.5.46_linux_arm64.tar.gz"
    sha256 "c38664161cad1552638af71b72e666e193ec25ca1f2e86d4dc14b979f90848fe"
  end

  def install
    bin.install "jumppad"
  end
end
