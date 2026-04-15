
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.27.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.27.1/jumppad_0.27.1_darwin_x86_64.zip"
    sha256 "2c7fb964415e4eebaf8a8eaad5bff8e2ee87c4781233ae9e6613956acefed0a8"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.27.1/jumppad_0.27.1_darwin_arm64.zip"
    sha256 "baacf488b5d6b431fa7edd6cf7ec4ee04d711473f7f20095fce2941cd3ebf03f"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.27.1/jumppad_0.27.1_linux_x86_64.tar.gz"
    sha256 "da1325a620417f10eec4b9d01f498257ae788e7a6a1f2273cf9173cb9a7f3cb8"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.27.1/jumppad_0.27.1_linux_arm64.tar.gz"
    sha256 "dfd36052c2f6ad5241cef4e5bbb35effbf810e1f28e74b1b0801cdd133f6f309"
  end

  def install
    bin.install "jumppad"
  end
end
