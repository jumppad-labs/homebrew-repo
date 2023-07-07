# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.31"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.31/jumppad_0.5.31_darwin_x86_64.zip"
    sha256 "241832ded908e56a44e17ec8ff58d2fbe0b615d7117072d8352f9623df14da8a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.31/jumppad_0.5.31_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.31/jumppad_0.5.31_linux_x86_64.tar.gz"
    sha256 "da2c50b629764badf72ab10f2d35660740129a81973921a78790a4abc629184d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.31/jumppad_0.5.31_linux_arm64.tar.gz"
    sha256 "5a25ad491f9d554f2562ce2d0bd4ee8538be0df3221768c6351218596b24c94a"
  end

  def install
    bin.install "jumppad"
  end
end
