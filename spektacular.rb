
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.17.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.17.0/spektacular_0.17.0_darwin_x86_64.zip"
    sha256 "858a60f2b260b840e3b9956ecc3f1f8ecaeab1df1c1f9376eca3a89206a65043"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.17.0/spektacular_0.17.0_darwin_arm64.zip"
    sha256 "4ba042846bbd2a97c17a9861335556e107d8c9333b09dc2acb9ad99ced7e6ab9"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.17.0/spektacular_0.17.0_linux_x86_64.tar.gz"
    sha256 "1a21b1aaced0444a120db71b67739696030c28ff339117f3051ac00b409d1869"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.17.0/spektacular_0.17.0_linux_arm64.tar.gz"
    sha256 "3b157e03401ad357e33a51538237254a33fbd974fe1c2dcb435a93313ed95fdb"
  end

  def install
    bin.install "spektacular"
  end
end
