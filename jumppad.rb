# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.38"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.38/jumppad_0.5.38_darwin_x86_64.zip"
    sha256 "d55e9e37a1b7cb230fc5540439a71b6f0340145b4cbfb82114e51a54724f44bf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.38/jumppad_0.5.38_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.38/jumppad_0.5.38_linux_x86_64.tar.gz"
    sha256 "9cac87e59dfaed0fbeb6fd6b17fbccc2fd69eb5a473dcdf07acfb7fe984dd54e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.38/jumppad_0.5.38_linux_arm64.tar.gz"
    sha256 "dab9ec181b8e93c3079566a6ccffd0f5532b79437e1ac0c06b125b56adbc2d54"
  end

  def install
    bin.install "jumppad"
  end
end
