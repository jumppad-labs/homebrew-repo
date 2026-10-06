
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://hivecommons.dev"
  version "0.25.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.25.0/spektacular_0.25.0_darwin_x86_64.zip"
    sha256 "11b3766a1434bfbb843736e4bdb3d045cec677aea5da290cce24973f4f110f38"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/hivecommons/spektacular/releases/download/0.25.0/spektacular_0.25.0_darwin_arm64.zip"
    sha256 "2b5a25a2b46576448bfa532b2ea22cc81dd40e98f68cc253378831b938bcccb5"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/hivecommons/spektacular/releases/download/0.25.0/spektacular_0.25.0_linux_x86_64.tar.gz"
    sha256 "1d5d0fe9e1ef6a15e2dcf815dc57fc95d2e9be921ed88abfd1ae852def36009e"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/hivecommons/spektacular/releases/download/0.25.0/spektacular_0.25.0_linux_arm64.tar.gz"
    sha256 "4ca67b389587c0b249531b2018d3bcf3add0469f1594a3ceede1a019c774ef7a"
  end

  def install
    bin.install "spektacular"
  end
end
