# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.34"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.34/jumppad_0.5.34_darwin_x86_64.zip"
    sha256 "e6fbecfc953f2805d167d7311ea4cfb87627fdf555241ae5694f29811f490ce6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.34/jumppad_0.5.34_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.34/jumppad_0.5.34_linux_x86_64.tar.gz"
    sha256 "d604346b33e8c0fe1b3cf1ac847ac0350e947ad5b42c060c26b719dd45614f5c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.34/jumppad_0.5.34_linux_arm64.tar.gz"
    sha256 "7b06a657bc2cc90f60e631b1bb3759efdcc2b8050097121d2c4c30916a1e8e52"
  end

  def install
    bin.install "jumppad"
  end
end
