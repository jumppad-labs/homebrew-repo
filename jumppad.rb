
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.24.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.24.0/jumppad_0.24.0_darwin_x86_64.zip"
    sha256 "674059dff61a6c49982ddee472114071dc315943a50e6061911c6a7249e8b236"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.24.0/jumppad_0.24.0_darwin_arm64.zip"
    sha256 "2e5ed22436d389797e122c2b8255549dd693cd65a35ce1976a39173c10008d77"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.24.0/jumppad_0.24.0_linux_x86_64.tar.gz"
    sha256 "958936d5d607939dced86d5f1c98890d2fda0fb89b3540246785f826146af508"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.24.0/jumppad_0.24.0_linux_arm64.tar.gz"
    sha256 "0d75cf224513d010b1b69466c3930be561de24ad0cbf13055800d76868e40211"
  end

  def install
    bin.install "jumppad"
  end
end
