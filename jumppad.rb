# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev/"
  version "0.5.16"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.16/jumppad_0.5.16_darwin_x86_64.zip"
    sha256 "5a6ffc3f764e214373e713084de0153fa80d98d330c079ce66f79c47cc9a3f92"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.16/jumppad_0.5.16_darwin_arm64.zip"
    sha256 ""
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.16/jumppad_0.5.16_linux_x86_64.tar.gz"
    sha256 "8ebdd344f0f0cfa6d8c5647f877363824c81403e4656f6a692e2d6be1945551d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/v0.5.16/jumppad_0.5.16_linux_arm64.tar.gz"
    sha256 "34bd8820d3db7c170e8404fe9b7a9fb7ab7019091b0cbb249c18f1e5a2345fab"
  end

  def install
    bin.install "jumppad"
  end
end
