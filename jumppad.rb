# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.45"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.45/jumppad_0.5.45_darwin_x86_64.zip"
    sha256 "0cbff38b680520cd3831836e33b91b980fe4db49370deb575fb580ae80f25020"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.45/jumppad_0.5.45_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.45/jumppad_0.5.45_linux_x86_64.tar.gz"
    sha256 "1bb8bc842433f06125b39c8c93f5d4837c0161a23c01ec9a8febe02ba75cccb8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.45/jumppad_0.5.45_linux_arm64.tar.gz"
    sha256 "ce54942be9e106a7d174312897e858384b0ff058476178c07a3a1df7de1b97b2"
  end

  def install
    bin.install "jumppad"
  end
end
