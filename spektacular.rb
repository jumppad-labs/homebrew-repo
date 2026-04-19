
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.1.0/spektacular_0.1.0_darwin_x86_64.zip"
    sha256 "30f562ce55a7c6c926548d023e38dafae2463058932630940ca3700d131161a6"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.1.0/spektacular_0.1.0_darwin_arm64.zip"
    sha256 "aedf05075a539bbd88ff4346cc721e39a7d746fb5be404857a7a52004aad5f4b"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.1.0/spektacular_0.1.0_linux_x86_64.tar.gz"
    sha256 "35215e69df6b8af1bdc225f18a7cff0e0fe0f874af265c2b2c2af01b137c46ba"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.1.0/spektacular_0.1.0_linux_arm64.tar.gz"
    sha256 "81a898362909fb3e45af27564ab5bf21372db8cad3074e26d944b9e8ff15f7c0"
  end

  def install
    bin.install "spektacular"
  end
end
