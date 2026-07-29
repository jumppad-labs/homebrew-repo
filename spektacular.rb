
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.15.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.0/spektacular_0.15.0_darwin_x86_64.zip"
    sha256 "876e98f2273a0b03f3388d88d11cafde643abaa916c226b14320fd1ded442b79"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.0/spektacular_0.15.0_darwin_arm64.zip"
    sha256 "72af26b2bbd497b2d3a4eb25a8798f0187de3aed60d84c0194102c062e01479c"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.0/spektacular_0.15.0_linux_x86_64.tar.gz"
    sha256 "93ffc4690970905f16e75252ac87c403a1859037b0456ce77ffffbe12b212b89"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.15.0/spektacular_0.15.0_linux_arm64.tar.gz"
    sha256 "3d27bc3b47ce768eefca7516ea0882b8af673c83f5d26f6a75e3a447ed9146a1"
  end

  def install
    bin.install "spektacular"
  end
end
