
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.28.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.28.1/jumppad_0.28.1_darwin_x86_64.zip"
    sha256 "8ec0595222bda10b835bae340868d4e00ef2e2af66b367aae15a7d3c5d0630b6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.28.1/jumppad_0.28.1_darwin_arm64.zip"
    sha256 "c3c6efcf3562203b163f4b017caa38535229532aa92f3ce39f6928e769da9f35"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.28.1/jumppad_0.28.1_linux_x86_64.tar.gz"
    sha256 "178ba2db5be4e95590be554988ca6c5ddfa681a7e57a1cca300de5e1f05eb492"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.28.1/jumppad_0.28.1_linux_arm64.tar.gz"
    sha256 "58bd3e5df7e21a94818ce4ce81d87b2eb530d8f57a815b90da1b793ceb6d0307"
  end

  def install
    bin.install "jumppad"
  end
end
