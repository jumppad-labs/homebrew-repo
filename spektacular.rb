
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.11.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.11.1/spektacular_0.11.1_darwin_x86_64.zip"
    sha256 "1e5e48794c25d842a916b4f6ac31921bc2fc407a2d845bab3f0550ded8e475c0"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.11.1/spektacular_0.11.1_darwin_arm64.zip"
    sha256 "8f402110e3229c2cc402430bb3f234c4794900d535f8d1374f8e299405a75f30"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.11.1/spektacular_0.11.1_linux_x86_64.tar.gz"
    sha256 "0a93334f21148949a2c5114d45731602bc379b7bba7e972ad10ea6a7b58b5af2"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.11.1/spektacular_0.11.1_linux_arm64.tar.gz"
    sha256 "5a60afa0db6cea4fc7c1311d6c12f47d9f7457c9bc5ce752c2f1de669b823721"
  end

  def install
    bin.install "spektacular"
  end
end
