
# typed: false
# frozen_string_literal: true

class Jumppad < Formula
  desc ""
  homepage "https://jumppad.dev"
  version "0.25.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.25.0/jumppad_0.25.0_darwin_x86_64.zip"
    sha256 "f721d8a9dd9ca3205c1455b208865f15be07e03b7318cb52b850a1b7fe22d24a"
  end

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.25.0/jumppad_0.25.0_darwin_arm64.zip"
    sha256 "c776d61d8936e30177e24461ee35c46aa45111fa6fdcd5ed23f5c35d93c0134e"
  end

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.25.0/jumppad_0.25.0_linux_x86_64.tar.gz"
    sha256 "a65742657e786f85965cc5ec94f419b5720fed8417544a539d812eb50a911ab4"
  end

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/jumppad-labs/jumppad/releases/download/0.25.0/jumppad_0.25.0_linux_arm64.tar.gz"
    sha256 "0f173b88baa3e76942fc138830fc3c339b4976d6186b6ad3e319e1d41030eae7"
  end

  def install
    bin.install "jumppad"
  end
end
