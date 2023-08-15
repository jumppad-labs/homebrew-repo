# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.40"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.40/jumppad_0.5.40_darwin_x86_64.zip"
    sha256 "051c24bdb3a0c070b5e06c5f20b3cc3509cd52682cd495fa075dd5a2ab4643ff"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.40/jumppad_0.5.40_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.40/jumppad_0.5.40_linux_x86_64.tar.gz"
    sha256 "a455d0663e184a3347d8b1914183fe10ea00de4dec35719441ed8a18f7792731"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.40/jumppad_0.5.40_linux_arm64.tar.gz"
    sha256 "1e908aef16e741ba1541965fa6d4d58636ca162f0fe8bf4d0133bd3746394545"
  end

  def install
    bin.install "jumppad"
  end
end
