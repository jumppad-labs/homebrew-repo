
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.23.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.23.3/jumppad_0.23.3_darwin_x86_64.zip"
    sha256 "42a6fa49e93da651162fb0e6e650abdfe37916fae8aa172cd7fa2403db428705"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.23.3/jumppad_0.23.3_darwin_arm64.zip"
    sha256 "15d2964d3889cb444e2282df917be85a0fb2cd9078dcaa8d542be538caa93788"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.23.3/jumppad_0.23.3_linux_x86_64.tar.gz"
    sha256 "0a27d33a2bd37f7369bc011ef649568e23ddad57bab500f77cbf2fa9383bd6bd"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.23.3/jumppad_0.23.3_linux_arm64.tar.gz"
    sha256 "f1105233525ada773b987bb6d1ecebcd18ad572afcff8db0888a249c6e0854e1"
  end

  def install
    bin.install "jumppad"
  end
end
