# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version ""

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v/jumppad__darwin_x86_64.zip"
    sha256 ""
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v/jumppad__darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v/jumppad__linux_x86_64.tar.gz"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v/jumppad__linux_arm64.tar.gz"
    sha256 ""
  end

  def install
    bin.install "jumppad"
  end
end
