# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.51"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.51/jumppad_0.5.51_darwin_x86_64.zip"
    sha256 "15974eab31b0e5d29f8b4d3262350045886ca27b36bd5819885f7f57828207da"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.51/jumppad_0.5.51_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.51/jumppad_0.5.51_linux_x86_64.tar.gz"
    sha256 "2c101766b8078fa4c2a1131aa74d299217b9a2b08a630c8b606926398e6141f0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.51/jumppad_0.5.51_linux_arm64.tar.gz"
    sha256 "16b46f22ef19bc5b551426f5cf0ab616a1e4624ffa7e3385b539d2578c33dec5"
  end

  def install
    bin.install "jumppad"
  end
end
