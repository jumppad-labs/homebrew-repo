# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.50"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.50/jumppad_0.5.50_darwin_x86_64.zip"
    sha256 "7c32acb3d6685d2a908e115c22e9122367a8121c6e980778332efc509da37881"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.50/jumppad_0.5.50_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.50/jumppad_0.5.50_linux_x86_64.tar.gz"
    sha256 "0820f975dc8431b7bb6cc0e1405255a621b78e5835e5033a1b41014529804259"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.50/jumppad_0.5.50_linux_arm64.tar.gz"
    sha256 "fde148c36e8f6a26337f097127ec27d3e6d8b6a5fb03d2bb1199dddcdc32e26d"
  end

  def install
    bin.install "jumppad"
  end
end
