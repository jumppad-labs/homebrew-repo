# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.56"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.56/jumppad_0.5.56_darwin_x86_64.zip"
    sha256 "4bfa52462ef6b72d8f93ce2fac96835e17ac51b30545b50e9cfa0563e791059f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.56/jumppad_0.5.56_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.56/jumppad_0.5.56_linux_x86_64.tar.gz"
    sha256 "16c4c424129f94dc601fa8e6eb0b71ff06090505a839c5cc30814d9217d54d84"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.56/jumppad_0.5.56_linux_arm64.tar.gz"
    sha256 "1e1f74777f583f48a11dfaadd661d1df7ffaf0f6310ddb02579c9092b3493bdd"
  end

  def install
    bin.install "jumppad"
  end
end
