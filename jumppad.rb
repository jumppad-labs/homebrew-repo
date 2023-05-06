# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.15"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.15/jumppad_0.5.15_darwin_x86_64.zip"
    sha256 "3fd2d0babbfdd9a8ca422488aab7361012ea2b9906120836f577f6aa28afc940"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.15/jumppad_0.5.15_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.15/jumppad_0.5.15_linux_x86_64.tar.gz"
    sha256 "e3754bdeafe3537c6b1caa9f350f597f22d59e5dda5f735117f4d8b2c7ee2814"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.15/jumppad_0.5.15_linux_arm64.tar.gz"
    sha256 "27ce668243fff1418da44aeeab87777f6ab082a7f986e4c9388e254e94729c06"
  end

  def install
    bin.install "jumppad"
  end
end
