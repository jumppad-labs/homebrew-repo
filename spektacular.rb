
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.32.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.32.0/spektacular_0.32.0_darwin_x86_64.zip"
    sha256 "b1d340d6f64123ea5d8c8ae1f39178a9bdacb313b176b3e329ef52e1fcfb9563"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.32.0/spektacular_0.32.0_darwin_arm64.zip"
    sha256 "a8ca54ea996c26c939ce5c4f5bb0f254233a7ff0ab6b826862ba557ab2dd04b4"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.32.0/spektacular_0.32.0_linux_x86_64.tar.gz"
    sha256 "ecef05a51906fdea95c4b343a263ea7b6c8603100ba10b690be0b681998a3db3"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.32.0/spektacular_0.32.0_linux_arm64.tar.gz"
    sha256 "4c1d0c971c463e18d8956335a9160982c548b2d6ec74d63ebdd27ed45611c1fe"
  end

  def install
    bin.install "spektacular"
  end
end
