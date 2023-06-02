# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.27"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.27/jumppad_0.5.27_darwin_x86_64.zip"
    sha256 "dd624ccabdd478d88009f0e9de9116a63486182b6415f66d70956850d69128f0"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.27/jumppad_0.5.27_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.27/jumppad_0.5.27_linux_x86_64.tar.gz"
    sha256 "96cf6b32272a9bfebe83b0edfe65a294c32e6cb0b2ca6c2226b5c50ff5e057ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.27/jumppad_0.5.27_linux_arm64.tar.gz"
    sha256 "0950f0ea981f5f3779c386c3c7f83b5294bbebab58fed25d2d2a167323ec8cb1"
  end

  def install
    bin.install "jumppad"
  end
end
