# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.33"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.33/jumppad_0.5.33_darwin_x86_64.zip"
    sha256 "562e9c9d5e24ed24c31bb080163419aa259f846dd1cd853cdb1ff5df7ce10958"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.33/jumppad_0.5.33_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.33/jumppad_0.5.33_linux_x86_64.tar.gz"
    sha256 "d0ec036a99bd63edf967212016ac47bd982ac7da3a82358292d059f8fd5bdc78"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.33/jumppad_0.5.33_linux_arm64.tar.gz"
    sha256 "9dcd096f413e7feba4496815270b09c97dc30912bdd62802a980b248fa109703"
  end

  def install
    bin.install "jumppad"
  end
end
