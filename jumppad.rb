# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.39"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.39/jumppad_0.5.39_darwin_x86_64.zip"
    sha256 "d04a109ec4a8acce7110467057471241f14c23c9f1a4db39a08b3ad9c6dd6d85"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.39/jumppad_0.5.39_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.39/jumppad_0.5.39_linux_x86_64.tar.gz"
    sha256 "42acb63af996b12319ae6ba359e7537ac9b513cf041834f60ea1bc9bb9163324"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.39/jumppad_0.5.39_linux_arm64.tar.gz"
    sha256 "d2bc593d037f01bbce82c9f692df69460006573049168fb98dd908e3d13163d1"
  end

  def install
    bin.install "jumppad"
  end
end
