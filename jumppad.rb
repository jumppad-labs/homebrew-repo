
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.25.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.25.1/jumppad_0.25.1_darwin_x86_64.zip"
    sha256 "565e459f345ffba27e3b1c885dc49b7600181080a6cc32c2a171cb6d70e7dd09"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.25.1/jumppad_0.25.1_darwin_arm64.zip"
    sha256 "ad128052ab05bfc748cf656d2ead640f38d74ca893311a5e028f8d168f6ecace"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.25.1/jumppad_0.25.1_linux_x86_64.tar.gz"
    sha256 "595ffeb059978cc514d9425226f7b19532d7b4389c7d4c1830ae37fc6f9b59f9"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.25.1/jumppad_0.25.1_linux_arm64.tar.gz"
    sha256 "3489f5ce486ced886226fae8fccb2c0e072d9e573ef718e1defd5bcc5c566f0a"
  end

  def install
    bin.install "jumppad"
  end
end
