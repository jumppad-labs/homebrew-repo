# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.32"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.32/jumppad_0.5.32_darwin_x86_64.zip"
    sha256 "8007356d609439fa29423bedcf6b6252fe6ccc6042a8bfa6d4d31316cdda070e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.32/jumppad_0.5.32_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.32/jumppad_0.5.32_linux_x86_64.tar.gz"
    sha256 "ad1fe718edf69df32c0fede4984f552a76981afc281cb5df1977cec3bb17ca12"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.32/jumppad_0.5.32_linux_arm64.tar.gz"
    sha256 "89a1f1905e2b87729603babb74e28d970f71f3d74440e5f500c10e0093ce5533"
  end

  def install
    bin.install "jumppad"
  end
end
