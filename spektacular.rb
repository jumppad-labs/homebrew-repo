
# typed: false
# frozen_string_literal: true

class Spektacular < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.18.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.1/spektacular_0.18.1_darwin_x86_64.zip"
    sha256 "749709ee5854edef485ce8c66ee9a1cd99cf44ed22b93e1a1f5e262c2eb87d2e"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.1/spektacular_0.18.1_darwin_arm64.zip"
    sha256 "8fd0626776adf822eaf287fe2fd8d204dc55d207bbf346723ca67bec9c539e98"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.1/spektacular_0.18.1_linux_x86_64.tar.gz"
    sha256 "053f6bf05e4915cf0c0051c4e7e069040d338134dbedae90d7ad358ddf1fe6a8"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/spektacular/releases/download/0.18.1/spektacular_0.18.1_linux_arm64.tar.gz"
    sha256 "f1744067d1f3db8a6b4a1f020bf82fa5cb4c30b6829716d4c7619c31bd60a13d"
  end

  def install
    bin.install "spektacular"
  end
end
