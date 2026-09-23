
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.21.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.21.0/spektacular_0.21.0_darwin_x86_64.zip"
    sha256 "d7b8c5749f4a3ca1ec69f0fd7cf9671dfd0b1c9cbdf637c24061f38e2b6d23ca"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.21.0/spektacular_0.21.0_darwin_arm64.zip"
    sha256 "91c9fda12d217b6565eace656f054a8122f3cbdc27648d9080b7b95e4f6051f6"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.21.0/spektacular_0.21.0_linux_x86_64.tar.gz"
    sha256 "6a2fe0d4e363ad2e8f85632d34a7d0902718d11f3ab74fbd3978b3a7377d7a33"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.21.0/spektacular_0.21.0_linux_arm64.tar.gz"
    sha256 "3275ee82761945cf245c23e7083ffde9c1b72bd235b200a39fdb1630a878882b"
  end

  def install
    bin.install "spektacular"
  end
end
