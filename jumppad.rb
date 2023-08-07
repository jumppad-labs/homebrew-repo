# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.36"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.36/jumppad_0.5.36_darwin_x86_64.zip"
    sha256 "690055e5811dfe88069c886edc64e060a9f2791d16a344eb978998b65920f876"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.36/jumppad_0.5.36_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.36/jumppad_0.5.36_linux_x86_64.tar.gz"
    sha256 "94281611fe97c6c1fc71144d99dd0fdd15a1c2ae393c0422aedf6e889f9c4bbd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.36/jumppad_0.5.36_linux_arm64.tar.gz"
    sha256 "a0e48bfec1c66597b699ef45e33bff4a86acfe18e021614ff8400a47c7ea0b64"
  end

  def install
    bin.install "jumppad"
  end
end
