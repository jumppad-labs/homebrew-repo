
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.8.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.8.0/spektacular_0.8.0_darwin_x86_64.zip"
    sha256 "961044e12bc86afe9062e0e49e9fbf8cd0e3ce2f442e7b9b5337bdd85e4782cf"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.8.0/spektacular_0.8.0_darwin_arm64.zip"
    sha256 "0f732f742996f9a803cb3c98898dd8fd4f1dc64f1813303e885c77844924d443"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.8.0/spektacular_0.8.0_linux_x86_64.tar.gz"
    sha256 "4d59095bd5bb09db317f7e78af922b77ebb32bdcaf1dfe042ac814f189c16fd8"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.8.0/spektacular_0.8.0_linux_arm64.tar.gz"
    sha256 "dcad25c5603eb5527488c96a44e8bc4eb8a24ab8600adff8df63e2826075e1f2"
  end

  def install
    bin.install "spektacular"
  end
end
