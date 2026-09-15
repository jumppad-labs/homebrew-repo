
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.19.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.1/spektacular_0.19.1_darwin_x86_64.zip"
    sha256 "3b9d1cb62b77c4f200f2b8a2328abb84ba0e137d9393ef23c0084835d800bfdd"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.1/spektacular_0.19.1_darwin_arm64.zip"
    sha256 "c9267cb192c40c98ba28deb93b85f316e7481675e946ca1e6463072cffda66aa"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.1/spektacular_0.19.1_linux_x86_64.tar.gz"
    sha256 "b19d07caf14ab669bafb4f1b7616e164d0b4d57ad8d50da743ffc9a650194c4f"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.19.1/spektacular_0.19.1_linux_arm64.tar.gz"
    sha256 "257fb34fddeccf18f2777f9768dab4ea5f8eaf4d1296ee772145e12b0bf9c262"
  end

  def install
    bin.install "spektacular"
  end
end
