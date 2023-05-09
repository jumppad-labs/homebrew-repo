# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.18"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.18/jumppad_0.5.18_darwin_x86_64.zip"
    sha256 "4dc3e6ca7ac901e53f8e3f2a3314550d4a5585a168451e9c515f91d630f75d92"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.18/jumppad_0.5.18_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.18/jumppad_0.5.18_linux_x86_64.tar.gz"
    sha256 "b4683b19f33704b972ddc35f13c9bbca61cdd43348ac6a6ae6811967e55ff069"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.18/jumppad_0.5.18_linux_arm64.tar.gz"
    sha256 "5327bd863bacc1ff33938797a5e9010dd19d00d7ac32ab9fc912f37a629ccf68"
  end

  def install
    bin.install "jumppad"
  end
end
