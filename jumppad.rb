# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.28"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.28/jumppad_0.5.28_darwin_x86_64.zip"
    sha256 "84c5e5d585714e9889bdc9a2810f400c9b5108dea9d95d04c38445ea0606e04c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.28/jumppad_0.5.28_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.28/jumppad_0.5.28_linux_x86_64.tar.gz"
    sha256 "e80eb8bc19e49fe3f6190c9dd69fb7ee9298d7f67b8fb026bc8eba4b23287828"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.28/jumppad_0.5.28_linux_arm64.tar.gz"
    sha256 "87ae17d95515f675bae1b622cb1d1feee3685c51f8302cf36daa949e7940b943"
  end

  def install
    bin.install "jumppad"
  end
end
