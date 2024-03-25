
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.10.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.10.2/jumppad_0.10.2_darwin_x86_64.zip"
    sha256 "32a5095e9d75abc6615b44c5b092209200e8fea0eb54d0ad2bc112cabe49d09f"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.10.2/jumppad_0.10.2_darwin_arm64.zip"
    sha256 "2bbf35d1d0895f3f70c2a7f2c448ca5f70d90ec359555daf648573e42cf1a1ac"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.10.2/jumppad_0.10.2_linux_x86_64.tar.g"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5  /jumppad"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.10.2/jumppad_0.10.2_linux_arm64.tar.giz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "jumppad"
  end
end
