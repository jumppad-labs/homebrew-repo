
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.34.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.34.0/spektacular_0.34.0_darwin_x86_64.zip"
    sha256 "b3831a74ebbf8c3213b139508c807c2ffd5c4d99d786fb3784dbc10a96fcbbd4"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.34.0/spektacular_0.34.0_darwin_arm64.zip"
    sha256 "4676573d2e75d7c0a44d3d1ee6761531358e06ff0224190671c58f6cf15b86f7"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.34.0/spektacular_0.34.0_linux_x86_64.tar.gz"
    sha256 "179d8b840ee268569922bd37166b9bd5a31382cf2ca924a082658fd272b5b754"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.34.0/spektacular_0.34.0_linux_arm64.tar.gz"
    sha256 "b7ee7acc64bc21b76b4e09fbe2d667e263e5fc75b385635b0d4c0922aa9096f4"
  end

  def install
    bin.install "spektacular"
  end
end
